require 'test_helper'

class BunkersControllerTest < ActionController::TestCase
  setup do
    @bunker = bunkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bunkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bunker" do
    assert_difference('Bunker.count') do
      post :create, bunker: { box_id: @bunker.box_id, casilla_cinco: @bunker.casilla_cinco, casilla_cuatro: @bunker.casilla_cuatro, casilla_diez: @bunker.casilla_diez, casilla_dos: @bunker.casilla_dos, casilla_nueve: @bunker.casilla_nueve, casilla_ocho: @bunker.casilla_ocho, casilla_seis: @bunker.casilla_seis, casilla_siete: @bunker.casilla_siete, casilla_tres: @bunker.casilla_tres, casilla_uno: @bunker.casilla_uno, en_operacion: @bunker.en_operacion, en_ruta: @bunker.en_ruta, municipio: @bunker.municipio, nombre: @bunker.nombre }
    end

    assert_redirected_to bunker_path(assigns(:bunker))
  end

  test "should show bunker" do
    get :show, id: @bunker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bunker
    assert_response :success
  end

  test "should update bunker" do
    put :update, id: @bunker, bunker: { box_id: @bunker.box_id, casilla_cinco: @bunker.casilla_cinco, casilla_cuatro: @bunker.casilla_cuatro, casilla_diez: @bunker.casilla_diez, casilla_dos: @bunker.casilla_dos, casilla_nueve: @bunker.casilla_nueve, casilla_ocho: @bunker.casilla_ocho, casilla_seis: @bunker.casilla_seis, casilla_siete: @bunker.casilla_siete, casilla_tres: @bunker.casilla_tres, casilla_uno: @bunker.casilla_uno, en_operacion: @bunker.en_operacion, en_ruta: @bunker.en_ruta, municipio: @bunker.municipio, nombre: @bunker.nombre }
    assert_redirected_to bunker_path(assigns(:bunker))
  end

  test "should destroy bunker" do
    assert_difference('Bunker.count', -1) do
      delete :destroy, id: @bunker
    end

    assert_redirected_to bunkers_path
  end
end
