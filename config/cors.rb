Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/orders',
      :headers => :any,
      :methods => [:post]
    resource '/users',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
      credentials: true
    end
end