require "test_helper"

class EnvParamsTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert EnvParams::VERSION
  end

  # test "imprime 'Hola mundo'" do
  #   expect { MiGema.hello }.to output("Hola mundo\n").to_stdout
  # end


  test "imprime 'Hola mundo'" do
    assert_output("Hola mundo\n") { EnvParams.hello }
  end

end
