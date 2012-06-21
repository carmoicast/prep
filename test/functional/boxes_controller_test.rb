require 'test_helper'

class BoxesControllerTest < ActionController::TestCase
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create box" do
    assert_difference('Box.count') do
      post :create, box: { casilla: @box.casilla, diputado_federal_coalicion_cinco: @box.diputado_federal_coalicion_cinco, diputado_federal_coalicion_cuatro: @box.diputado_federal_coalicion_cuatro, diputado_federal_coalicion_dos: @box.diputado_federal_coalicion_dos, diputado_federal_coalicion_tres: @box.diputado_federal_coalicion_tres, diputado_federal_coalicion_uno: @box.diputado_federal_coalicion_uno, diputado_federal_movimiento: @box.diputado_federal_movimiento, diputado_federal_no_registrado: @box.diputado_federal_no_registrado, diputado_federal_nueva_alianza: @box.diputado_federal_nueva_alianza, diputado_federal_pan: @box.diputado_federal_pan, diputado_federal_prd: @box.diputado_federal_prd, diputado_federal_pri: @box.diputado_federal_pri, diputado_federal_pt: @box.diputado_federal_pt, diputado_federal_total: @box.diputado_federal_total, diputado_federal_verde: @box.diputado_federal_verde, diputado_federal_votos_nulos: @box.diputado_federal_votos_nulos, direccion: @box.direccion, gob_candidatos_no_registrado: @box.gob_candidatos_no_registrado, gob_coalicion_cinco: @box.gob_coalicion_cinco, gob_coalicion_cuatro: @box.gob_coalicion_cuatro, gob_coalicion_dos: @box.gob_coalicion_dos, gob_coalicion_tres: @box.gob_coalicion_tres, gob_coalicion_uno: @box.gob_coalicion_uno, gob_movimiento: @box.gob_movimiento, gob_nueva_alianza: @box.gob_nueva_alianza, gob_pan: @box.gob_pan, gob_prd: @box.gob_prd, gob_pri: @box.gob_pri, gob_pt: @box.gob_pt, gob_total: @box.gob_total, gob_verde: @box.gob_verde, gob_votos_nulos: @box.gob_votos_nulos, hora_apertura: @box.hora_apertura, hora_cierre: @box.hora_cierre, id_incidente: @box.id_incidente, municipio: @box.municipio, pre_candidatos_no_registrado: @box.pre_candidatos_no_registrado, pre_coalicion_cinco: @box.pre_coalicion_cinco, pre_coalicion_cuatro: @box.pre_coalicion_cuatro, pre_coalicion_dos: @box.pre_coalicion_dos, pre_coalicion_tres: @box.pre_coalicion_tres, pre_coalicion_uno: @box.pre_coalicion_uno, pre_movimiento: @box.pre_movimiento, pre_nueva_alinza: @box.pre_nueva_alinza, pre_pan: @box.pre_pan, pre_prd: @box.pre_prd, pre_pri: @box.pre_pri, pre_pt: @box.pre_pt, pre_total: @box.pre_total, pre_verde: @box.pre_verde, pre_votos_nulos: @box.pre_votos_nulos, rc_dos: @box.rc_dos, rc_tres: @box.rc_tres, rc_uno: @box.rc_uno, seccion: @box.seccion }
    end

    assert_redirected_to box_path(assigns(:box))
  end

  test "should show box" do
    get :show, id: @box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @box
    assert_response :success
  end

  test "should update box" do
    put :update, id: @box, box: { casilla: @box.casilla, diputado_federal_coalicion_cinco: @box.diputado_federal_coalicion_cinco, diputado_federal_coalicion_cuatro: @box.diputado_federal_coalicion_cuatro, diputado_federal_coalicion_dos: @box.diputado_federal_coalicion_dos, diputado_federal_coalicion_tres: @box.diputado_federal_coalicion_tres, diputado_federal_coalicion_uno: @box.diputado_federal_coalicion_uno, diputado_federal_movimiento: @box.diputado_federal_movimiento, diputado_federal_no_registrado: @box.diputado_federal_no_registrado, diputado_federal_nueva_alianza: @box.diputado_federal_nueva_alianza, diputado_federal_pan: @box.diputado_federal_pan, diputado_federal_prd: @box.diputado_federal_prd, diputado_federal_pri: @box.diputado_federal_pri, diputado_federal_pt: @box.diputado_federal_pt, diputado_federal_total: @box.diputado_federal_total, diputado_federal_verde: @box.diputado_federal_verde, diputado_federal_votos_nulos: @box.diputado_federal_votos_nulos, direccion: @box.direccion, gob_candidatos_no_registrado: @box.gob_candidatos_no_registrado, gob_coalicion_cinco: @box.gob_coalicion_cinco, gob_coalicion_cuatro: @box.gob_coalicion_cuatro, gob_coalicion_dos: @box.gob_coalicion_dos, gob_coalicion_tres: @box.gob_coalicion_tres, gob_coalicion_uno: @box.gob_coalicion_uno, gob_movimiento: @box.gob_movimiento, gob_nueva_alianza: @box.gob_nueva_alianza, gob_pan: @box.gob_pan, gob_prd: @box.gob_prd, gob_pri: @box.gob_pri, gob_pt: @box.gob_pt, gob_total: @box.gob_total, gob_verde: @box.gob_verde, gob_votos_nulos: @box.gob_votos_nulos, hora_apertura: @box.hora_apertura, hora_cierre: @box.hora_cierre, id_incidente: @box.id_incidente, municipio: @box.municipio, pre_candidatos_no_registrado: @box.pre_candidatos_no_registrado, pre_coalicion_cinco: @box.pre_coalicion_cinco, pre_coalicion_cuatro: @box.pre_coalicion_cuatro, pre_coalicion_dos: @box.pre_coalicion_dos, pre_coalicion_tres: @box.pre_coalicion_tres, pre_coalicion_uno: @box.pre_coalicion_uno, pre_movimiento: @box.pre_movimiento, pre_nueva_alinza: @box.pre_nueva_alinza, pre_pan: @box.pre_pan, pre_prd: @box.pre_prd, pre_pri: @box.pre_pri, pre_pt: @box.pre_pt, pre_total: @box.pre_total, pre_verde: @box.pre_verde, pre_votos_nulos: @box.pre_votos_nulos, rc_dos: @box.rc_dos, rc_tres: @box.rc_tres, rc_uno: @box.rc_uno, seccion: @box.seccion }
    assert_redirected_to box_path(assigns(:box))
  end

  test "should destroy box" do
    assert_difference('Box.count', -1) do
      delete :destroy, id: @box
    end

    assert_redirected_to boxes_path
  end
end
