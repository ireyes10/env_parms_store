require 'env_params/config'
require 'env_params/engine'
require 'env_params/version'

module EnvParams
  # Your code goes here...
  def self.configuration
    @configuration ||= fetch_configuration
  end

end
