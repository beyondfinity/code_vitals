# require "sample_gem/version"

require 'sandi_meter/file_scanner'
require 'pp'

class CodeVital
  attr_accessor :app_path

  def initialize(path)
    self.app_path = path
  end

  def self.dummy_test
    p 'Works'
  end

  def run_sandi_meter
    scanner = SandiMeter::FileScanner.new
    data = scanner.scan(app_path)
    pp data
  end
end
