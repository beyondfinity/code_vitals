# frozen_string_literal: true
require 'rails/generators'
require 'helpers/detector'

module VitalsMaster
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Detector

      def add_config_files
        puts "Creating initializer file"
        create_file "config/initializers/code_vitals.rb", "# Add initialization content here"
      end

      def inform_about_gems_found
        p "The supported gems found in this rails application are #{Detector.gem_names}"
      end

      # def rails_4?
      #   Rails::VERSION::MAJOR == 4
      # end
    end
  end
end
