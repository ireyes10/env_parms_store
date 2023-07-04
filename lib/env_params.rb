require "env_params/version"
require "env_params/railtie"
require "env_params/configuration"

module EnvParams
  # Your code goes here...

  class Error < StandardError; end
  # Tu código aquí

  def self.load_params(app_name)
    if ENV['EMAIL_USER'].nil? || ENV['API_KEY'].nil?
      return 
    end
    config = {
      email:   ENV['EMAIL_USER'],
      api_key: ENV['API_KEY'],
      app_name: app_name,
      env: Rails.env
    }
    Configuration.new(config)

  end

  def self.hello
    puts 'Hola mundo'
  end
end
