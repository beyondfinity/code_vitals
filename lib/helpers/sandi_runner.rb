class SandiRunner
  def self.perform
    report = self.gather_metrics
    update_report(report)
  end

  def self.gather_metrics
    output_data = `sandi_meter --json`
    data = eval output_data
  end

  def self.update_report(report)
    File.open('code_vitals/sandi_meter_report.json', 'w') { |file| file.write(report) }
    p 'Sandi meter metric updated!'
  end
end
