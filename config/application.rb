require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TrixTextApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    if Rails.env.development?
      config.hosts << "localhost"
      config.hosts << "lvh.me"
      config.hosts << /[a-z0-9]+\.lvh\.me/

      # webconsole
      config.web_console.template_paths = "app/views/web_console"
      host_ip = `hostname -i`
      # TIP .strip removes leading and trailing whitespace such as /n
      config.web_console.permissions = [host_ip.strip.sub(/\.(\d{1,3})$/, ".0/16"), "192.168.10.0/16"]
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
