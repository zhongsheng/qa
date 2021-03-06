module Qa
  class Engine < ::Rails::Engine
    isolate_namespace Qa

     config.app_middleware.use(
      Rack::Static,
      urls: ["/qa-packs"], root: ::Qa::Engine.root.join('public').to_s
    )

    initializer "webpacker.proxy" do |app|
        insert_middleware = begin
                            Qa.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
        next unless insert_middleware

        app.middleware.insert_before(
          0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
          ssl_verify_none: true,
          webpacker: Qa.webpacker
        )
      end
  end
end
