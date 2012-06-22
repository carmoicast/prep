require 'test_helper'

class IncidencesControllerTest < ActionController::TestCase
  setup do
    @incidence = incidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incidence" do
    assert_difference('Incidence.count') do
      post :create, incidence: { box_id: @incidence.box_id, hora: @incidence.hora, tipo_incidente_apertura: @incidence.tipo_incidente_apertura, tipo_incidente_cierre: @incidence.tipo_incidente_cierre, tipo_incidente_otro: @incidence.tipo_incidente_otro, tipo_incidente_proceso: @incidence.tipo_incidente_proceso }
    end

    assert_redirected_to incidence_path(assigns(:incidence))
  end

  test "should show incidence" do
    get :show, id: @incidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incidence
    assert_response :success
  end

  test "should update incidence" do
    put :update, id: @incidence, incidence: { box_id: @incidence.box_id, hora: @incidence.hora, tipo_incidente_apertura: @incidence.tipo_incidente_apertura, tipo_incidente_cierre: @incidence.tipo_incidente_cierre, tipo_incidente_otro: @incidence.tipo_incidente_otro, tipo_incidente_proceso: @incidence.tipo_incidente_proceso }
    assert_redirected_to incidence_path(assigns(:incidence))
  end

  test "should destroy incidence" do
    assert_difference('Incidence.count', -1) do
      delete :destroy, id: @incidence
    end

    assert_redirected_to incidences_path
  end
end
