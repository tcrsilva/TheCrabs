require 'test_helper'

class PrediosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @predio = predios(:one)
  end

  test "should get index" do
    get predios_url
    assert_response :success
  end

  test "should get new" do
    get new_predio_url
    assert_response :success
  end

  test "should create predio" do
    assert_difference('Predio.count') do
      post predios_url, params: { predio: { cd_bloco: @predio.cd_bloco, cd_cep: @predio.cd_cep, cd_numero: @predio.cd_numero, cd_telefone: @predio.cd_telefone, ds_endereco: @predio.ds_endereco, ds_municipio: @predio.ds_municipio, ds_regioesSociais: @predio.ds_regioesSociais, nm_predio: @predio.nm_predio } }
    end

    assert_redirected_to predio_url(Predio.last)
  end

  test "should show predio" do
    get predio_url(@predio)
    assert_response :success
  end

  test "should get edit" do
    get edit_predio_url(@predio)
    assert_response :success
  end

  test "should update predio" do
    patch predio_url(@predio), params: { predio: { cd_bloco: @predio.cd_bloco, cd_cep: @predio.cd_cep, cd_numero: @predio.cd_numero, cd_telefone: @predio.cd_telefone, ds_endereco: @predio.ds_endereco, ds_municipio: @predio.ds_municipio, ds_regioesSociais: @predio.ds_regioesSociais, nm_predio: @predio.nm_predio } }
    assert_redirected_to predio_url(@predio)
  end

  test "should destroy predio" do
    assert_difference('Predio.count', -1) do
      delete predio_url(@predio)
    end

    assert_redirected_to predios_url
  end
end
