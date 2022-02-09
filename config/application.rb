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
    config.middleware.use ActionDispatch::Session::CookieStore

    config.action_dispatch.cookies_same_site_protection = :strict

  end
  

  # CORS security, change "origins" if you want to change location
  # Rails.application.config.middleware.insert_before 0, Rack::Cors do
  #   allow do
  #     origins '*'
  #       resource '/orders',
  #       :headers => :any,
  #       :methods => [:post]
  #     resource '/users',
  #       headers: :any,
  #       methods: [:get, :post, :put, :patch, :delete, :options, :head]
  #   end
  # end
end
