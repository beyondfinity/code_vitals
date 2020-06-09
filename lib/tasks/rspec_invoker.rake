require 'rspec/core/rake_task'

namespace :rspec_report do
  desc 'Run all specs and generate RSpec report in HTML'
  task :html do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.rspec_opts = '--format html --out reports/rspec_results.html'
    end
    Rake::Task[:spec].invoke
  end

  desc 'Run all specs and generate RSpec report in JSON'
  task :json do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.rspec_opts = '--format json --out reports/rspec_results.json'
    end
    Rake::Task[:spec].invoke
  end
end
