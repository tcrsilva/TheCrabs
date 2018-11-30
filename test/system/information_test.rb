require "application_system_test_case"

class InformationTest < ApplicationSystemTestCase
  setup do
    @information = information(:one)
  end

  test "visiting the index" do
    visit information_url
    assert_selector "h1", text: "Information"
  end

  test "creating a Information" do
    visit information_url
    click_on "New Information"

    fill_in "Cd Apartamento", with: @information.cd_apartamento
    fill_in "Cd Celular", with: @information.cd_celular
    fill_in "Cd Sindico", with: @information.cd_sindico
    fill_in "Cd Telefone", with: @information.cd_telefone
    fill_in "Ds Email", with: @information.ds_email
    fill_in "Ds Endereco", with: @information.ds_endereco
    fill_in "Ds Municipio", with: @information.ds_municipio
    fill_in "Nm Sindico", with: @information.nm_sindico
    click_on "Create Information"

    assert_text "Information was successfully created"
    click_on "Back"
  end

  test "updating a Information" do
    visit information_url
    click_on "Edit", match: :first

    fill_in "Cd Apartamento", with: @information.cd_apartamento
    fill_in "Cd Celular", with: @information.cd_celular
    fill_in "Cd Sindico", with: @information.cd_sindico
    fill_in "Cd Telefone", with: @information.cd_telefone
    fill_in "Ds Email", with: @information.ds_email
    fill_in "Ds Endereco", with: @information.ds_endereco
    fill_in "Ds Municipio", with: @information.ds_municipio
    fill_in "Nm Sindico", with: @information.nm_sindico
    click_on "Update Information"

    assert_text "Information was successfully updated"
    click_on "Back"
  end

  test "destroying a Information" do
    visit information_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Information was successfully destroyed"
  end
end
