class RubocopRunner
  def self.perform
    report = self.gather_metrics
    update_report(report)
  end

  def self.gather_metrics
    output_data = `rubocop --format=json`
    JSON.parse(output_data)
  end

  def self.update_report(report)
    File.open('code_vitals/rubocop_report.json', 'w') { |file| file.write(report) }
    p 'Rubocop metric updated!'
  end
end
