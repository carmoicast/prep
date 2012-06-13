require 'test_helper'

class PollsControllerTest < ActionController::TestCase
  setup do
    @poll = polls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:polls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poll" do
    assert_difference('Poll.count') do
      post :create, poll: { correo: @poll.correo, domicilio: @poll.domicilio, edad_cinco: @poll.edad_cinco, edad_cuatro: @poll.edad_cuatro, edad_diez: @poll.edad_diez, edad_dos: @poll.edad_dos, edad_nueve: @poll.edad_nueve, edad_ocho: @poll.edad_ocho, edad_seis: @poll.edad_seis, edad_siete: @poll.edad_siete, edad_tres: @poll.edad_tres, edad_tres: @poll.edad_tres, edad_uno: @poll.edad_uno, estudio: @poll.estudio, materno: @poll.materno, nombre: @poll.nombre, nombre_cinco: @poll.nombre_cinco, nombre_cuatro: @poll.nombre_cuatro, nombre_diez: @poll.nombre_diez, nombre_dos: @poll.nombre_dos, nombre_nueve: @poll.nombre_nueve, nombre_ocho: @poll.nombre_ocho, nombre_seis: @poll.nombre_seis, nombre_siete: @poll.nombre_siete, nombre_tres: @poll.nombre_tres, nombre_uno: @poll.nombre_uno, paterno: @poll.paterno, posicionamiento_a: @poll.posicionamiento_a, posicionamiento_b: @poll.posicionamiento_b, posicionamiento_c: @poll.posicionamiento_c, posicionamiento_d: @poll.posicionamiento_d, posicionamiento_e: @poll.posicionamiento_e, pregunta_a: @poll.pregunta_a, pregunta_observaciones: @poll.pregunta_observaciones, profesion: @poll.profesion, rol: @poll.rol, telefono: @poll.telefono, tipo_cinco: @poll.tipo_cinco, tipo_cuatro: @poll.tipo_cuatro, tipo_diez: @poll.tipo_diez, tipo_dos: @poll.tipo_dos, tipo_nueve: @poll.tipo_nueve, tipo_ocho: @poll.tipo_ocho, tipo_seis: @poll.tipo_seis, tipo_siete: @poll.tipo_siete, tipo_uno: @poll.tipo_uno }
    end

    assert_redirected_to poll_path(assigns(:poll))
  end

  test "should show poll" do
    get :show, id: @poll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poll
    assert_response :success
  end

  test "should update poll" do
    put :update, id: @poll, poll: { correo: @poll.correo, domicilio: @poll.domicilio, edad_cinco: @poll.edad_cinco, edad_cuatro: @poll.edad_cuatro, edad_diez: @poll.edad_diez, edad_dos: @poll.edad_dos, edad_nueve: @poll.edad_nueve, edad_ocho: @poll.edad_ocho, edad_seis: @poll.edad_seis, edad_siete: @poll.edad_siete, edad_tres: @poll.edad_tres, edad_tres: @poll.edad_tres, edad_uno: @poll.edad_uno, estudio: @poll.estudio, materno: @poll.materno, nombre: @poll.nombre, nombre_cinco: @poll.nombre_cinco, nombre_cuatro: @poll.nombre_cuatro, nombre_diez: @poll.nombre_diez, nombre_dos: @poll.nombre_dos, nombre_nueve: @poll.nombre_nueve, nombre_ocho: @poll.nombre_ocho, nombre_seis: @poll.nombre_seis, nombre_siete: @poll.nombre_siete, nombre_tres: @poll.nombre_tres, nombre_uno: @poll.nombre_uno, paterno: @poll.paterno, posicionamiento_a: @poll.posicionamiento_a, posicionamiento_b: @poll.posicionamiento_b, posicionamiento_c: @poll.posicionamiento_c, posicionamiento_d: @poll.posicionamiento_d, posicionamiento_e: @poll.posicionamiento_e, pregunta_a: @poll.pregunta_a, pregunta_observaciones: @poll.pregunta_observaciones, profesion: @poll.profesion, rol: @poll.rol, telefono: @poll.telefono, tipo_cinco: @poll.tipo_cinco, tipo_cuatro: @poll.tipo_cuatro, tipo_diez: @poll.tipo_diez, tipo_dos: @poll.tipo_dos, tipo_nueve: @poll.tipo_nueve, tipo_ocho: @poll.tipo_ocho, tipo_seis: @poll.tipo_seis, tipo_siete: @poll.tipo_siete, tipo_uno: @poll.tipo_uno }
    assert_redirected_to poll_path(assigns(:poll))
  end

  test "should destroy poll" do
    assert_difference('Poll.count', -1) do
      delete :destroy, id: @poll
    end

    assert_redirected_to polls_path
  end
end
