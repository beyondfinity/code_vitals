# code_vitals

Steps to Build/construct data structures for metrics data:

* Add Gem in the Gemfile (e.g gem 'code_vitals', github: 'beyondfinity/code_vitals', branch: 'setup-data-structures')
* Run bundle in terminal ( comment - bunlde)
  * Check the terminal that bundle is succesfully updated the gem and installed
    * After succesful bundle - message like "Bundle complete! 62 Gemfile dependencies, 200 gems now installed." is shown up in terminal
* Run the rails generator (Comment - rails g)
  * Check the terminal that genertor is created for code vitals 
    * After succesful generation - end of terminal like VitalsClient and VitalsMaster
* Run the rails generator for VitalsClient  (comment - rails g vitals_client:install)
  * Some initializer filer are created under code_vitals(sandi_meter_report.json , spec_report.json ,reek_report.json) and they are empty files
* Run the rails console (comment - rails c)
  * Now all the vitals reports(i.e sandi_meter_report.json , spec_report.json ,reek_report.json) got updated
    * The terminal end up the message as "All code vitals has been updated successfully."