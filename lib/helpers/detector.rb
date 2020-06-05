module Detector
  SUPPORTED_GEMS = ['sandi_meter', 'rspec-rails', 'rubycritic', 'reek', 'bullet', 'rubocop', 'simple_cov']

  def gems_found
    identify_supported_gems_in_bundle
  end

  def gem_names
    gems_found.map(&:name).join(' | ')
  end

  private

  def identify_supported_gems_in_bundle
    gems_included = []
    SUPPORTED_GEMS.each do |gem_name|
      gems_included << Gem.loaded_specs[gem_name] if Gem.loaded_specs[gem_name]
    end
    gems_included
  end
end
