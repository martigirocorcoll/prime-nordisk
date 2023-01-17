require "application_system_test_case"

class CobrosTest < ApplicationSystemTestCase
  setup do
    @cobro = cobros(:one)
  end

  test "visiting the index" do
    visit cobros_url
    assert_selector "h1", text: "Cobros"
  end

  test "creating a Cobro" do
    visit cobros_url
    click_on "New Cobro"

    fill_in "Comprador", with: @cobro.comprador_id
    fill_in "Fecha", with: @cobro.fecha
    fill_in "Quantitat", with: @cobro.quantitat
    fill_in "Sale", with: @cobro.sale_id
    click_on "Create Cobro"

    assert_text "Cobro was successfully created"
    click_on "Back"
  end

  test "updating a Cobro" do
    visit cobros_url
    click_on "Edit", match: :first

    fill_in "Comprador", with: @cobro.comprador_id
    fill_in "Fecha", with: @cobro.fecha
    fill_in "Quantitat", with: @cobro.quantitat
    fill_in "Sale", with: @cobro.sale_id
    click_on "Update Cobro"

    assert_text "Cobro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cobro" do
    visit cobros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cobro was successfully destroyed"
  end
end
