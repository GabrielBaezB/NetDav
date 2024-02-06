require "test_helper"

class AccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acc = accs(:one)
  end

  test "should get index" do
    get accs_url
    assert_response :success
  end

  test "should get new" do
    get new_acc_url
    assert_response :success
  end

  test "should create acc" do
    assert_difference("Acc.count") do
      post accs_url, params: { acc: { contrasena: @acc.contrasena, facturacion: @acc.facturacion, nombre_de_cuentas: @acc.nombre_de_cuentas, perfiles: @acc.perfiles } }
    end

    assert_redirected_to acc_url(Acc.last)
  end

  test "should show acc" do
    get acc_url(@acc)
    assert_response :success
  end

  test "should get edit" do
    get edit_acc_url(@acc)
    assert_response :success
  end

  test "should update acc" do
    patch acc_url(@acc), params: { acc: { contrasena: @acc.contrasena, facturacion: @acc.facturacion, nombre_de_cuentas: @acc.nombre_de_cuentas, perfiles: @acc.perfiles } }
    assert_redirected_to acc_url(@acc)
  end

  test "should destroy acc" do
    assert_difference("Acc.count", -1) do
      delete acc_url(@acc)
    end

    assert_redirected_to accs_url
  end
end
