module EnvParams
  class Engine < Rails::Engine
    

    initializer "active_storage.configs" do
      config.after_initialize do |app|
        EnvParams.load_app = app.config.env_params.load_app
      end
    end


  end


end