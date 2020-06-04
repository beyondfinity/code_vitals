class Detector
  SUPPORTED_GEMS = ['sandi_meter', 'rspec-rails', 'rubycritic', 'reek', 'bullet', 'rubocop', 'simple_cov']

  attr_reader :gems_included

  def initialize
    perform_detection
  end

  def perform_detection
    identify_supported_gems_in_bundle
  end

  def supported_gems
    names = gems_included.map(&:name).join(' | ')
    p "The supported gems found in this rails application are #{names}"
    gems_included
  end

  private

  def identify_supported_gems_in_bundle
    @gems_included = []
    SUPPORTED_GEMS.each do |gem_name|
      @gems_included << Gem.loaded_specs[gem_name] if Gem.loaded_specs[gem_name]
    end
  end
end
