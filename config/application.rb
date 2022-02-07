require_relative "boot"
require "pry"
require "rails/all"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AuctionAppBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.api_only = true    

    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore, key: '_namespace_key'
    # config.middleware.insert_after(ActionDispatch::Cookies, ActionDispatch::Session::CookieStore)


    # config.action_dispatch.cookies_same_site_protection = :strict
    config.action_dispatch.cookies_same_site_protection = :none

  end
  

  #CORS security, change "origins" if you want to change location
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete, :patch]
    end
  end
end
