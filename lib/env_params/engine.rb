module EnvParams
  class Engine < Rails::Engine
    

    initializer "env_params.configs" do
      config.after_initialize do |app|
        EnvParams.load_app = app.config.env_params.load_app
      end
    end


  end


end