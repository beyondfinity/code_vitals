class SpecRunner
  require 'rspec/core'

  def self.perform
    report = self.gather_metrics
    update_report(report)
  end

  def self.gather_metrics
    output_data = `rspec --format=json`
    format_output(output_data)
  end

  def self.format_output(data)
    data = data.split('Coverage report')
    json_op = eval(data[0])
    final_summary = { cov_ratio: data[1].slice(/\d+\s\/\s\d+/), cov_percent: data[1].slice(/\d{1,2}\.\d{1,2}/).to_f }
    json_op['simple_cov'] = final_summary
    json_op
  end

  def self.update_report(report)
    File.open('code_vitals/spec_report.json', 'w') { |file| file.write(report) }
    p ""
    p "Spec metric updated!"
    p "Coverage metric updated!"
  end
end
