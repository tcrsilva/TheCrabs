require "application_system_test_case"

class FinancesTest < ApplicationSystemTestCase
  setup do
    @finance = finances(:one)
  end

  test "visiting the index" do
    visit finances_url
    assert_selector "h1", text: "Finances"
  end

  test "creating a Finance" do
    visit finances_url
    click_on "Adicionar Gasto"

    fill_in "Nota Fiscal", with: @finance.cd_finance
    fill_in "Descrição de Gasto", with: @finance.ds_finance
    fill_in "Tipo de Gasto", with: @finance.nm_finance
    fill_in "Valor em Reais", with: @finance.vl_finance
    click_on "Salvar"

    assert_text "Finance was successfully created"
    click_on "Voltar"
  end

  test "updating a Finance" do
    visit finances_url
    click_on "Edit", match: :first

    fill_in "Nota Fiscal", with: @finance.cd_finance
    fill_in "Descrição de Gasto", with: @finance.ds_finance
    fill_in "Tipo de Gasto", with: @finance.nm_finance
    fill_in "Valor em Reais", with: @finance.vl_finance
    click_on "Atualizar"

    assert_text "Gasto Adicionado"
    click_on "Voltar"
  end

  test "destroying a Finance" do
    visit finances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Finance was successfully destroyed"
  end
end
