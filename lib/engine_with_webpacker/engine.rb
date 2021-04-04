module EngineWithWebpacker
  class Engine < ::Rails::Engine
    initializer "webpacker.proxy" do |app|
      insert_middleware = begin
                          EngineWithWebpacker.webpacker.config.dev_server.present?
                        rescue
                          nil
                        end
      next unless insert_middleware

      app.middleware.insert_before(
        0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
        ssl_verify_none: true,
        webpacker: EngineWithWebpacker.webpacker
      )
    end


    config.app_middleware.use(
      Rack::Static,
      urls: ["/engine-with-webpacker-packs"], root: "engine_with_webpacker/public"
    )

    Gem.loaded_specs["engine_with_webpacker"].dependencies.each do |dependence|
      require dependence.name
    end


    config.generators do |g|
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'

      g.test_framework :rspec
    end

    isolate_namespace EngineWithWebpacker
  end
end
