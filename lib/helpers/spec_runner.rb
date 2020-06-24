module SpecRunner
  def perform
  end

  def gether_metrics
  end

  def update_report(report)
    inject_into_file 'spec_report.txt' do <<-'RUBY'
      puts report
    RUBY
    end
  end
end
