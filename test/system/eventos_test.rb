require "application_system_test_case"

class EventosTest < ApplicationSystemTestCase
  setup do
    @evento = eventos(:one)
  end

  test "visiting the index" do
    visit eventos_url
    assert_selector "h1", text: "Eventos"
  end

  test "creating a Evento" do
    visit eventos_url
    click_on "New Evento"

    fill_in "Date", with: @evento.date
    fill_in "Local", with: @evento.local
    fill_in "Texto", with: @evento.texto
    fill_in "Titulo", with: @evento.titulo
    click_on "Create Evento"

    assert_text "Evento was successfully created"
    click_on "Back"
  end

  test "updating a Evento" do
    visit eventos_url
    click_on "Edit", match: :first

    fill_in "Date", with: @evento.date
    fill_in "Local", with: @evento.local
    fill_in "Texto", with: @evento.texto
    fill_in "Titulo", with: @evento.titulo
    click_on "Update Evento"

    assert_text "Evento was successfully updated"
    click_on "Back"
  end

  test "destroying a Evento" do
    visit eventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evento was successfully destroyed"
  end
end
