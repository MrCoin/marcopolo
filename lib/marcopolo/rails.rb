module Marcopolo
  class Marco < Rails::Railtie
    initializer "marcopolo.configure_rails_initialization" do |app|
      if Marcopolo.options[:enabled]
        app.middleware.insert_before Rack::Runtime, "Marcopolo::Middleware"
      end
    end
  end
end
