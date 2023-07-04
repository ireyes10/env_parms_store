require 'httparty'

module EnvParams
  class Config
    include HTTParty

    base_uri 'http://tu.api.com'  # Reemplaza con la URL de tu API

    def self.load_configuration

      correo  = ENV['EMAIL']
      llave   = ENV['KEY_USER_PARAMS']

      if correo.nil? || llave.nil?
        raise ArgumentError, 'No specific email or api key in environment variables.'
      end

      response = get('/configuraciones')
      if response.success?
        configuration = JSON.parse(response.body)
        # Haz disponible la configuración en tu aplicación
        MyRailsApp::Application.config.env_params = configuration['env_params']
      else
       
      end
    end
   
  end

end