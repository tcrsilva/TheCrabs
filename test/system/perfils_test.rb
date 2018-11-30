require "application_system_test_case"

class PerfilsTest < ApplicationSystemTestCase
  setup do
    @perfil = perfils(:one)
  end

  test "visiting the index" do
    visit perfils_url
    assert_selector "h1", text: "Perfils"
  end

  test "creating a Perfil" do
    visit perfils_url
    click_on "New Perfil"

    fill_in "Sindico", with: @perfil.sindico
    click_on "Create Perfil"

    assert_text "Perfil was successfully created"
    click_on "Back"
  end

  test "updating a Perfil" do
    visit perfils_url
    click_on "Edit", match: :first

    fill_in "Sindico", with: @perfil.sindico
    click_on "Update Perfil"

    assert_text "Perfil was successfully updated"
    click_on "Back"
  end

  test "destroying a Perfil" do
    visit perfils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perfil was successfully destroyed"
  end
end
