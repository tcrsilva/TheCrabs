require "application_system_test_case"

class PrediosTest < ApplicationSystemTestCase
  setup do
    @predio = predios(:one)
  end

  test "visiting the index" do
    visit predios_url
    assert_selector "h1", text: "Predios"
  end

  test "creating a Predio" do
    visit predios_url
    click_on "New Predio"

    fill_in "Cd Bloco", with: @predio.cd_bloco
    fill_in "Cd Cep", with: @predio.cd_cep
    fill_in "Cd Numero", with: @predio.cd_numero
    fill_in "Cd Telefone", with: @predio.cd_telefone
    fill_in "Ds Endereco", with: @predio.ds_endereco
    fill_in "Ds Municipio", with: @predio.ds_municipio
    fill_in "Ds Regioessociais", with: @predio.ds_regioesSociais
    fill_in "Nm Predio", with: @predio.nm_predio
    click_on "Create Predio"

    assert_text "Predio was successfully created"
    click_on "Back"
  end

  test "updating a Predio" do
    visit predios_url
    click_on "Edit", match: :first

    fill_in "Cd Bloco", with: @predio.cd_bloco
    fill_in "Cd Cep", with: @predio.cd_cep
    fill_in "Cd Numero", with: @predio.cd_numero
    fill_in "Cd Telefone", with: @predio.cd_telefone
    fill_in "Ds Endereco", with: @predio.ds_endereco
    fill_in "Ds Municipio", with: @predio.ds_municipio
    fill_in "Ds Regioessociais", with: @predio.ds_regioesSociais
    fill_in "Nm Predio", with: @predio.nm_predio
    click_on "Update Predio"

    assert_text "Predio was successfully updated"
    click_on "Back"
  end

  test "destroying a Predio" do
    visit predios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Predio was successfully destroyed"
  end
end
