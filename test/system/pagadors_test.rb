require "application_system_test_case"

class PagadorsTest < ApplicationSystemTestCase
  setup do
    @pagador = pagadors(:one)
  end

  test "visiting the index" do
    visit pagadors_url
    assert_selector "h1", text: "Pagadors"
  end

  test "creating a Pagador" do
    visit pagadors_url
    click_on "New Pagador"

    fill_in "Nombre", with: @pagador.nombre
    click_on "Create Pagador"

    assert_text "Pagador was successfully created"
    click_on "Back"
  end

  test "updating a Pagador" do
    visit pagadors_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @pagador.nombre
    click_on "Update Pagador"

    assert_text "Pagador was successfully updated"
    click_on "Back"
  end

  test "destroying a Pagador" do
    visit pagadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pagador was successfully destroyed"
  end
end
