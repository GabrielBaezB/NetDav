require "test_helper"

class ContratoServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contrato_servicio = contrato_servicios(:one)
  end

  test "should get index" do
    get contrato_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_contrato_servicio_url
    assert_response :success
  end

  test "should create contrato_servicio" do
    assert_difference("ContratoServicio.count") do
      post contrato_servicios_url, params: { contrato_servicio: { cantidad: @contrato_servicio.cantidad, cliente_id: @contrato_servicio.cliente_id, fecha_contratacion: @contrato_servicio.fecha_contratacion, servicio: @contrato_servicio.servicio, valor_individual: @contrato_servicio.valor_individual } }
    end

    assert_redirected_to contrato_servicio_url(ContratoServicio.last)
  end

  test "should show contrato_servicio" do
    get contrato_servicio_url(@contrato_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_contrato_servicio_url(@contrato_servicio)
    assert_response :success
  end

  test "should update contrato_servicio" do
    patch contrato_servicio_url(@contrato_servicio), params: { contrato_servicio: { cantidad: @contrato_servicio.cantidad, cliente_id: @contrato_servicio.cliente_id, fecha_contratacion: @contrato_servicio.fecha_contratacion, servicio: @contrato_servicio.servicio, valor_individual: @contrato_servicio.valor_individual } }
    assert_redirected_to contrato_servicio_url(@contrato_servicio)
  end

  test "should destroy contrato_servicio" do
    assert_difference("ContratoServicio.count", -1) do
      delete contrato_servicio_url(@contrato_servicio)
    end

    assert_redirected_to contrato_servicios_url
  end
end
