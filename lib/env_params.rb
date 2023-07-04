require "env_params/version"
require "env_params/railtie"

module EnvParams
  # Your code goes here...
  def self.configuration
    @configuration ||= fetch_configuration
  end

end
