# code_vitals

Steps to Build/construct data structures for metrics data:

* Add Gem in the Gemfile - `gem 'code_vitals', github: 'beyondfinity/code_vitals'`
* bundle install - This allows 2 new generator in the app. 1. vitals_client:install 2. vitals_master:install
* Run the rails generator for VitalsClient - `rails g vitals_client:install`
  * A config file is created at `config/initilizers/code_vitals.rb`. Few report files are created under `code_vitals/`
* To generate/update the vitals start the rails console - `rails c`
* Run `CodeVital.update_vitals`
  * Now all the vital reports gets updated in the `code_vitals/` directory
