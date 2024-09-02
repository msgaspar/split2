require "application_system_test_case"

class RegistrosTest < ApplicationSystemTestCase
  setup do
    @registro = registros(:one)
  end

  test "visiting the index" do
    visit registros_url
    assert_selector "h1", text: "Registros"
  end

  test "should create registro" do
    visit registros_url
    click_on "New registro"

    fill_in "Descricao", with: @registro.descricao
    fill_in "Nome", with: @registro.nome
    click_on "Create Registro"

    assert_text "Registro was successfully created"
    click_on "Back"
  end

  test "should update Registro" do
    visit registro_url(@registro)
    click_on "Edit this registro", match: :first

    fill_in "Descricao", with: @registro.descricao
    fill_in "Nome", with: @registro.nome
    click_on "Update Registro"

    assert_text "Registro was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro" do
    visit registro_url(@registro)
    click_on "Destroy this registro", match: :first

    assert_text "Registro was successfully destroyed"
  end
end
