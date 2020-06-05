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
    end
  end
end
