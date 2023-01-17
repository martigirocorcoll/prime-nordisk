require "application_system_test_case"

class CompradorsTest < ApplicationSystemTestCase
  setup do
    @comprador = compradors(:one)
  end

  test "visiting the index" do
    visit compradors_url
    assert_selector "h1", text: "Compradors"
  end

  test "creating a Comprador" do
    visit compradors_url
    click_on "New Comprador"

    fill_in "Contacto", with: @comprador.contacto
    fill_in "Mail", with: @comprador.mail
    fill_in "Nombre", with: @comprador.nombre
    click_on "Create Comprador"

    assert_text "Comprador was successfully created"
    click_on "Back"
  end

  test "updating a Comprador" do
    visit compradors_url
    click_on "Edit", match: :first

    fill_in "Contacto", with: @comprador.contacto
    fill_in "Mail", with: @comprador.mail
    fill_in "Nombre", with: @comprador.nombre
    click_on "Update Comprador"

    assert_text "Comprador was successfully updated"
    click_on "Back"
  end

  test "destroying a Comprador" do
    visit compradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comprador was successfully destroyed"
  end
end
