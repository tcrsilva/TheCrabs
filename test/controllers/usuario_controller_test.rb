require 'test_helper'

class UsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get usuario_new_url
    assert_response :success
  end

  test "should get create" do
    get usuario_create_url
    assert_response :success
  end

  test "should get show" do
    get usuario_show_url
    assert_response :success
  end

end
