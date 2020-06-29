require 'helpers/detector'
require 'helpers/sandi_runner'
require 'helpers/spec_runner'
require 'helpers/reek_runner'

class Runner
  attr_accessor :metrics
  GEM_RUNNER = {'sandi_meter' => 'SandiRunner', 'rspec-rails' => 'SpecRunner', 'reek' => 'ReekRunner'}

  include Detector
  # include SandiRunner
  # include SpecRunner
  # include ReekRunner

  def start
    p "Vitals are to be generated for the following gems - #{gem_names}"

    gems_found.each do |gem|
      found_runner = GEM_RUNNER[gem.name]
      found_runner.constantize.perform if found_runner
    end

    p 'All code vitals has been updated successfully.'
  end
end
