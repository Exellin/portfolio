# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.

environment_variables = File.join(Rails.root, 'config', 'environment_variables.rb')
load(environment_variables) if File.exist?(environment_variables)

Rails.application.initialize!
