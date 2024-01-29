require "test_helper"

class ContratoComboPaquetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contrato_combo_paquete = contrato_combo_paquetes(:one)
  end

  test "should get index" do
    get contrato_combo_paquetes_url
    assert_response :success
  end

  test "should get new" do
    get new_contrato_combo_paquete_url
    assert_response :success
  end

  test "should create contrato_combo_paquete" do
    assert_difference("ContratoComboPaquete.count") do
      post contrato_combo_paquetes_url, params: { contrato_combo_paquete: { cantidad: @contrato_combo_paquete.cantidad, cliente_id: @contrato_combo_paquete.cliente_id, combo_paquete: @contrato_combo_paquete.combo_paquete, fecha_contratacion: @contrato_combo_paquete.fecha_contratacion, valor: @contrato_combo_paquete.valor } }
    end

    assert_redirected_to contrato_combo_paquete_url(ContratoComboPaquete.last)
  end

  test "should show contrato_combo_paquete" do
    get contrato_combo_paquete_url(@contrato_combo_paquete)
    assert_response :success
  end

  test "should get edit" do
    get edit_contrato_combo_paquete_url(@contrato_combo_paquete)
    assert_response :success
  end

  test "should update contrato_combo_paquete" do
    patch contrato_combo_paquete_url(@contrato_combo_paquete), params: { contrato_combo_paquete: { cantidad: @contrato_combo_paquete.cantidad, cliente_id: @contrato_combo_paquete.cliente_id, combo_paquete: @contrato_combo_paquete.combo_paquete, fecha_contratacion: @contrato_combo_paquete.fecha_contratacion, valor: @contrato_combo_paquete.valor } }
    assert_redirected_to contrato_combo_paquete_url(@contrato_combo_paquete)
  end

  test "should destroy contrato_combo_paquete" do
    assert_difference("ContratoComboPaquete.count", -1) do
      delete contrato_combo_paquete_url(@contrato_combo_paquete)
    end

    assert_redirected_to contrato_combo_paquetes_url
  end
end
