require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module SortingHat
  class Application < Rails::Application
    config.load_defaults 5.1

    config.time_zone = 'Brasilia'
  end
end
