class CodeVital
  attr_accessor :app_path

  require 'runner'

  def initialize(path)
    self.app_path = path
  end

  def self.update_vitals
    Runner.new.start
  end
end
