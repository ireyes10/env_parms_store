require "rails"

module EnvParams
  class Engine < Rails::Engine
    #config.env_params.load_app = 
    config.env_params.load_app = ActiveSupport::InheritableOptions.new
    config.eager_load_namespaces << EnvParams

    initializer "env_params.configs" do
      config.after_initialize do |app|
        EnvParams.load_app = app.config.env_params.load_app
      end
    end


  end


end