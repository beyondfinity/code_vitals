# frozen_string_literal: true
require 'rails/generators'
require 'helpers/detector'

module VitalsClient
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Detector

      def add_config_files
        puts "Creating initializer file"
        create_file "config/initializers/code_vitals.rb", "# Add initialization content here"
      end

      def generate_routes
        puts "Adding route"
        route "resource :vitals, only: [:index, :create]"
      end

      def inform_about_gems_found
        p "The supported gems found in this rails application are #{Detector.gem_names}"
      end

      def create_vitals_report_cards
        create_file "code_vitals/sandi_meter_report.json", ""
        create_file "code_vitals/rspec_report.txt", ""
        create_file "code_vitals/reek_report.json", ""
      end
    end
  end
end
