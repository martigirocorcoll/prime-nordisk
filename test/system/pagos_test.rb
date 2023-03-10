require "application_system_test_case"

class PagosTest < ApplicationSystemTestCase
  setup do
    @pago = pagos(:one)
  end

  test "visiting the index" do
    visit pagos_url
    assert_selector "h1", text: "Pagos"
  end

  test "creating a Pago" do
    visit pagos_url
    click_on "New Pago"

    fill_in "Expense", with: @pago.expense_id
    fill_in "Fecha", with: @pago.fecha
    fill_in "Pagador", with: @pago.pagador_id
    fill_in "Quantitat", with: @pago.quantitat
    click_on "Create Pago"

    assert_text "Pago was successfully created"
    click_on "Back"
  end

  test "updating a Pago" do
    visit pagos_url
    click_on "Edit", match: :first

    fill_in "Expense", with: @pago.expense_id
    fill_in "Fecha", with: @pago.fecha
    fill_in "Pagador", with: @pago.pagador_id
    fill_in "Quantitat", with: @pago.quantitat
    click_on "Update Pago"

    assert_text "Pago was successfully updated"
    click_on "Back"
  end

  test "destroying a Pago" do
    visit pagos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pago was successfully destroyed"
  end
end
