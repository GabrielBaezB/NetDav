require "application_system_test_case"

class PromocionsTest < ApplicationSystemTestCase
  setup do
    @promocion = promocions(:one)
  end

  test "visiting the index" do
    visit promocions_url
    assert_selector "h1", text: "Promocions"
  end

  test "should create promocion" do
    visit promocions_url
    click_on "New promocion"

    check "Estado" if @promocion.estado
    fill_in "Fecha vigencia", with: @promocion.fecha_vigencia
    fill_in "Nombre", with: @promocion.nombre
    click_on "Create Promocion"

    assert_text "Promocion was successfully created"
    click_on "Back"
  end

  test "should update Promocion" do
    visit promocion_url(@promocion)
    click_on "Edit this promocion", match: :first

    check "Estado" if @promocion.estado
    fill_in "Fecha vigencia", with: @promocion.fecha_vigencia
    fill_in "Nombre", with: @promocion.nombre
    click_on "Update Promocion"

    assert_text "Promocion was successfully updated"
    click_on "Back"
  end

  test "should destroy Promocion" do
    visit promocion_url(@promocion)
    click_on "Destroy this promocion", match: :first

    assert_text "Promocion was successfully destroyed"
  end
end
