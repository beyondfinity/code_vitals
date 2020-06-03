# frozen_string_literal: true
require 'rails/generators'

module VitalsMaster
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_config_files
        puts "Creating initializer file"
        create_file "config/initializers/code_vitals.rb", "# Add initialization content here"
      end

      # def rails_4?
      #   Rails::VERSION::MAJOR == 4
      # end
    end
  end
end
