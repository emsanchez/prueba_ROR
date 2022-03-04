require "test_helper"

class PersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get personas_url
    assert_response :success
  end

  test "should get new" do
    get new_persona_url
    assert_response :success
  end

  test "should create persona" do
    assert_difference("Persona.count") do
      post personas_url, params: { persona: { apellido_m: @persona.apellido_m, apellido_p: @persona.apellido_p, estado_civil: @persona.estado_civil, fecha_nacimiento: @persona.fecha_nacimiento, lugar_nacimiento: @persona.lugar_nacimiento, nombre: @persona.nombre, sexo: @persona.sexo } }
    end

    assert_redirected_to persona_url(Persona.last)
  end

  test "should show persona" do
    get persona_url(@persona)
    assert_response :success
  end

  test "should get edit" do
    get edit_persona_url(@persona)
    assert_response :success
  end

  test "should update persona" do
    patch persona_url(@persona), params: { persona: { apellido_m: @persona.apellido_m, apellido_p: @persona.apellido_p, estado_civil: @persona.estado_civil, fecha_nacimiento: @persona.fecha_nacimiento, lugar_nacimiento: @persona.lugar_nacimiento, nombre: @persona.nombre, sexo: @persona.sexo } }
    assert_redirected_to persona_url(@persona)
  end

  test "should destroy persona" do
    assert_difference("Persona.count", -1) do
      delete persona_url(@persona)
    end

    assert_redirected_to personas_url
  end
end
