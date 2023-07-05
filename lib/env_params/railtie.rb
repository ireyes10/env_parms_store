module EnvParams
  class Railtie < ::Rails::Railtie

    initializer 'my_plugin.routes' do
      EnvParams::Engine.routes.draw do
        get '/custom_route', to: 'my_controller#my_action'
      end
    end

  end
end
