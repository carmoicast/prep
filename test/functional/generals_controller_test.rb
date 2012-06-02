require 'test_helper'

class GeneralsControllerTest < ActionController::TestCase
  setup do
    @general = generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post :create, general: { colonia: @general.colonia, domicilio: @general.domicilio, email: @general.email, estudios: @general.estudios, id_campaign: @general.id_campaign, id_estructura: @general.id_estructura, materno: @general.materno, nombre: @general.nombre, paterno: @general.paterno, profesion: @general.profesion, rolfamiliar: @general.rolfamiliar, telefono: @general.telefono, tipotel: @general.tipotel }
    end

    assert_redirected_to general_path(assigns(:general))
  end

  test "should show general" do
    get :show, id: @general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general
    assert_response :success
  end

  test "should update general" do
    put :update, id: @general, general: { colonia: @general.colonia, domicilio: @general.domicilio, email: @general.email, estudios: @general.estudios, id_campaign: @general.id_campaign, id_estructura: @general.id_estructura, materno: @general.materno, nombre: @general.nombre, paterno: @general.paterno, profesion: @general.profesion, rolfamiliar: @general.rolfamiliar, telefono: @general.telefono, tipotel: @general.tipotel }
    assert_redirected_to general_path(assigns(:general))
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete :destroy, id: @general
    end

    assert_redirected_to generals_path
  end
end
