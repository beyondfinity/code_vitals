require 'sandi_meter/file_scanner'
require 'pp'

module SandiRunner
  def perform
    report = gather_metrics
    update_report(report)
  end

  def gether_metrics
    scanner = SandiMeter::FileScanner.new
    data = scanner.scan(Rails.root.to_s)
  end

  def update_report(report)
    inject_into_file 'sandi_meter_report.json' do <<-'RUBY'
      puts report
    RUBY
    end
  end
end
