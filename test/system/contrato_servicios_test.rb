require "application_system_test_case"

class ContratoServiciosTest < ApplicationSystemTestCase
  setup do
    @contrato_servicio = contrato_servicios(:one)
  end

  test "visiting the index" do
    visit contrato_servicios_url
    assert_selector "h1", text: "Contrato servicios"
  end

  test "should create contrato servicio" do
    visit contrato_servicios_url
    click_on "New contrato servicio"

    fill_in "Cantidad", with: @contrato_servicio.cantidad
    fill_in "Cliente", with: @contrato_servicio.cliente_id
    fill_in "Fecha contratacion", with: @contrato_servicio.fecha_contratacion
    fill_in "Servicio", with: @contrato_servicio.servicio
    fill_in "Valor individual", with: @contrato_servicio.valor_individual
    click_on "Create Contrato servicio"

    assert_text "Contrato servicio was successfully created"
    click_on "Back"
  end

  test "should update Contrato servicio" do
    visit contrato_servicio_url(@contrato_servicio)
    click_on "Edit this contrato servicio", match: :first

    fill_in "Cantidad", with: @contrato_servicio.cantidad
    fill_in "Cliente", with: @contrato_servicio.cliente_id
    fill_in "Fecha contratacion", with: @contrato_servicio.fecha_contratacion
    fill_in "Servicio", with: @contrato_servicio.servicio
    fill_in "Valor individual", with: @contrato_servicio.valor_individual
    click_on "Update Contrato servicio"

    assert_text "Contrato servicio was successfully updated"
    click_on "Back"
  end

  test "should destroy Contrato servicio" do
    visit contrato_servicio_url(@contrato_servicio)
    click_on "Destroy this contrato servicio", match: :first

    assert_text "Contrato servicio was successfully destroyed"
  end
end
