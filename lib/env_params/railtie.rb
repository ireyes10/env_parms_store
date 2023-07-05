module EnvParams
  class Railtie < ::Rails::Railtie
    

    initializer 'env_params.load_app' do |app|
      option.load_app = app.config.env_params.load_app
    end

  end
end
