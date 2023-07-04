module EnvParams
  class Engine < Rails::Engine
    initializer 'env_params.load_configuration' do
      EnvParams::Config.load_settings
    end
  end
end