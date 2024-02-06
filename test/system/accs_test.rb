require "application_system_test_case"

class AccsTest < ApplicationSystemTestCase
  setup do
    @acc = accs(:one)
  end

  test "visiting the index" do
    visit accs_url
    assert_selector "h1", text: "Accs"
  end

  test "should create acc" do
    visit accs_url
    click_on "New acc"

    fill_in "Contrasena", with: @acc.contrasena
    fill_in "Facturacion", with: @acc.facturacion
    fill_in "Nombre de cuentas", with: @acc.nombre_de_cuentas
    fill_in "Perfiles", with: @acc.perfiles
    click_on "Create Acc"

    assert_text "Acc was successfully created"
    click_on "Back"
  end

  test "should update Acc" do
    visit acc_url(@acc)
    click_on "Edit this acc", match: :first

    fill_in "Contrasena", with: @acc.contrasena
    fill_in "Facturacion", with: @acc.facturacion
    fill_in "Nombre de cuentas", with: @acc.nombre_de_cuentas
    fill_in "Perfiles", with: @acc.perfiles
    click_on "Update Acc"

    assert_text "Acc was successfully updated"
    click_on "Back"
  end

  test "should destroy Acc" do
    visit acc_url(@acc)
    click_on "Destroy this acc", match: :first

    assert_text "Acc was successfully destroyed"
  end
end
