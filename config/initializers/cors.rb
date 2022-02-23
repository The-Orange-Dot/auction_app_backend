Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://localhost:3000'
    resource '*',
      :headers => :any,
      :methods => :any
  end
end