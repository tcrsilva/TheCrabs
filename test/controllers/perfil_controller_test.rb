require 'test_helper'

class PerfilControllerTest < ActionDispatch::IntegrationTest
  test "should get sindico" do
    get perfil_sindico_url
    assert_response :success
  end

  test "should get morador" do
    get perfil_morador_url
    assert_response :success
  end

end
