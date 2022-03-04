require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "should create persona" do
    visit personas_url
    click_on "New persona"

    fill_in "Apellido m", with: @persona.apellido_m
    fill_in "Apellido p", with: @persona.apellido_p
    fill_in "Estado civil", with: @persona.estado_civil
    fill_in "Fecha nacimiento", with: @persona.fecha_nacimiento
    fill_in "Lugar nacimiento", with: @persona.lugar_nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Sexo", with: @persona.sexo
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "should update Persona" do
    visit persona_url(@persona)
    click_on "Edit this persona", match: :first

    fill_in "Apellido m", with: @persona.apellido_m
    fill_in "Apellido p", with: @persona.apellido_p
    fill_in "Estado civil", with: @persona.estado_civil
    fill_in "Fecha nacimiento", with: @persona.fecha_nacimiento
    fill_in "Lugar nacimiento", with: @persona.lugar_nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Sexo", with: @persona.sexo
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "should destroy Persona" do
    visit persona_url(@persona)
    click_on "Destroy this persona", match: :first

    assert_text "Persona was successfully destroyed"
  end
end
