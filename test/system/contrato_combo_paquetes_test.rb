require "application_system_test_case"

class ContratoComboPaquetesTest < ApplicationSystemTestCase
  setup do
    @contrato_combo_paquete = contrato_combo_paquetes(:one)
  end

  test "visiting the index" do
    visit contrato_combo_paquetes_url
    assert_selector "h1", text: "Contrato combo paquetes"
  end

  test "should create contrato combo paquete" do
    visit contrato_combo_paquetes_url
    click_on "New contrato combo paquete"

    fill_in "Cantidad", with: @contrato_combo_paquete.cantidad
    fill_in "Cliente", with: @contrato_combo_paquete.cliente_id
    fill_in "Combo paquete", with: @contrato_combo_paquete.combo_paquete
    fill_in "Fecha contratacion", with: @contrato_combo_paquete.fecha_contratacion
    fill_in "Valor", with: @contrato_combo_paquete.valor
    click_on "Create Contrato combo paquete"

    assert_text "Contrato combo paquete was successfully created"
    click_on "Back"
  end

  test "should update Contrato combo paquete" do
    visit contrato_combo_paquete_url(@contrato_combo_paquete)
    click_on "Edit this contrato combo paquete", match: :first

    fill_in "Cantidad", with: @contrato_combo_paquete.cantidad
    fill_in "Cliente", with: @contrato_combo_paquete.cliente_id
    fill_in "Combo paquete", with: @contrato_combo_paquete.combo_paquete
    fill_in "Fecha contratacion", with: @contrato_combo_paquete.fecha_contratacion
    fill_in "Valor", with: @contrato_combo_paquete.valor
    click_on "Update Contrato combo paquete"

    assert_text "Contrato combo paquete was successfully updated"
    click_on "Back"
  end

  test "should destroy Contrato combo paquete" do
    visit contrato_combo_paquete_url(@contrato_combo_paquete)
    click_on "Destroy this contrato combo paquete", match: :first

    assert_text "Contrato combo paquete was successfully destroyed"
  end
end
