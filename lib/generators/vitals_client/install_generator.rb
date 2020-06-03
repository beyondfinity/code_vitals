# frozen_string_literal: true
require 'rails/generators'

module VitalsClient
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_config_files
        puts "Creating initializer file"
        create_file "config/initializers/code_vitals.rb", "# Add initialization content here"
      end

      def generate_routes
        puts "Adding route"
        route "resource :vitals, only: [:index, :create]"
      end
    end
  end
end
