require 'test_helper'

class FamilystructuresControllerTest < ActionController::TestCase
  setup do
    @familystructure = familystructures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:familystructures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create familystructure" do
    assert_difference('Familystructure.count') do
      post :create, familystructure: { edad: @familystructure.edad, id_general: @familystructure.id_general, materno: @familystructure.materno, nombre: @familystructure.nombre, parentesco: @familystructure.parentesco, paterno: @familystructure.paterno }
    end

    assert_redirected_to familystructure_path(assigns(:familystructure))
  end

  test "should show familystructure" do
    get :show, id: @familystructure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @familystructure
    assert_response :success
  end

  test "should update familystructure" do
    put :update, id: @familystructure, familystructure: { edad: @familystructure.edad, id_general: @familystructure.id_general, materno: @familystructure.materno, nombre: @familystructure.nombre, parentesco: @familystructure.parentesco, paterno: @familystructure.paterno }
    assert_redirected_to familystructure_path(assigns(:familystructure))
  end

  test "should destroy familystructure" do
    assert_difference('Familystructure.count', -1) do
      delete :destroy, id: @familystructure
    end

    assert_redirected_to familystructures_path
  end
end
