require 'test_helper'

class EstablecimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @establecimiento = establecimientos(:one)
  end

  test "should get index" do
    get establecimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_establecimiento_url
    assert_response :success
  end

  test "should create establecimiento" do
    assert_difference('Establecimiento.count') do
      post establecimientos_url, params: { establecimiento: { alias: @establecimiento.alias, idcategoria: @establecimiento.idcategoria, imagen: @establecimiento.imagen, informacion: @establecimiento.informacion, latitud: @establecimiento.latitud, longitud: @establecimiento.longitud, nombre: @establecimiento.nombre, numeracion: @establecimiento.numeracion } }
    end

    assert_redirected_to establecimiento_url(Establecimiento.last)
  end

  test "should show establecimiento" do
    get establecimiento_url(@establecimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_establecimiento_url(@establecimiento)
    assert_response :success
  end

  test "should update establecimiento" do
    patch establecimiento_url(@establecimiento), params: { establecimiento: { alias: @establecimiento.alias, idcategoria: @establecimiento.idcategoria, imagen: @establecimiento.imagen, informacion: @establecimiento.informacion, latitud: @establecimiento.latitud, longitud: @establecimiento.longitud, nombre: @establecimiento.nombre, numeracion: @establecimiento.numeracion } }
    assert_redirected_to establecimiento_url(@establecimiento)
  end

  test "should destroy establecimiento" do
    assert_difference('Establecimiento.count', -1) do
      delete establecimiento_url(@establecimiento)
    end

    assert_redirected_to establecimientos_url
  end
end
