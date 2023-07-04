module EnvParams
  class Railtie < ::Rails::Railtie
    config.before_configuration do
      config.env_params = ActiveSupport::OrderedOptions.new
      config.env_params.hello
    end

  end
end
