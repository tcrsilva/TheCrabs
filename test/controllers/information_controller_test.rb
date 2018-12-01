require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get information_index_url
    assert_response :success
  end

  test "should get new" do
    get new_information_url
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post information_index_url, params: { information: { cd_apartamento: @information.cd_apartamento, cd_celular: @information.cd_celular, cd_sindico: @information.cd_sindico, cd_telefone: @information.cd_telefone, ds_email: @information.ds_email, ds_endereco: @information.ds_endereco, ds_municipio: @information.ds_municipio, nm_sindico: @information.nm_sindico } }
    end

    assert_redirected_to information_url(Information.last)
  end

  test "should show information" do
    get information_url(@information)
    assert_response :success
  end

  test "should get edit" do
    get edit_information_url(@information)
    assert_response :success
  end

  test "should update information" do
    patch information_url(@information), params: { information: { cd_apartamento: @information.cd_apartamento, cd_celular: @information.cd_celular, cd_sindico: @information.cd_sindico, cd_telefone: @information.cd_telefone, ds_email: @information.ds_email, ds_endereco: @information.ds_endereco, ds_municipio: @information.ds_municipio, nm_sindico: @information.nm_sindico } }
    assert_redirected_to information_url(@information)
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete information_url(@information)
    end

    assert_redirected_to information_index_url
  end
end
