require_relative 'boot'
require 'dotenv'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

    # Dotenv::Railtie.load

    
module MsScaf
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # config.relative_url_root = "/admin/project"
    config.action_controller.permit_all_parameters = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    Bundler.require(*Rails.groups)
    Dotenv::Railtie.load

    print(ENV['DATABASE_PASSWORD'])

  end
end