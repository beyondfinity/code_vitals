class ReekRunner
  def self.perform
    report = self.gather_metrics
    update_report(report)
  end

  def self.gather_metrics
    output_data = `reek --format=json`
    JSON.parse(output_data)
  end

  def self.update_report(report)
    File.open('code_vitals/reek_report.json', 'w') { |file| file.write(report) }
    p 'Reek metric updated!'
  end
end
