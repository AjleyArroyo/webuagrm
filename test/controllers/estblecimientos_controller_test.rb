require 'test_helper'

class EstblecimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estblecimiento = estblecimientos(:one)
  end

  test "should get index" do
    get estblecimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_estblecimiento_url
    assert_response :success
  end

  test "should create estblecimiento" do
    assert_difference('Estblecimiento.count') do
      post estblecimientos_url, params: { estblecimiento: { alias: @estblecimiento.alias, idcategoria: @estblecimiento.idcategoria, imagen: @estblecimiento.imagen, informacion: @estblecimiento.informacion, latitud: @estblecimiento.latitud, longitud: @estblecimiento.longitud, nombre: @estblecimiento.nombre, numeracion: @estblecimiento.numeracion } }
    end

    assert_redirected_to estblecimiento_url(Estblecimiento.last)
  end

  test "should show estblecimiento" do
    get estblecimiento_url(@estblecimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_estblecimiento_url(@estblecimiento)
    assert_response :success
  end

  test "should update estblecimiento" do
    patch estblecimiento_url(@estblecimiento), params: { estblecimiento: { alias: @estblecimiento.alias, idcategoria: @estblecimiento.idcategoria, imagen: @estblecimiento.imagen, informacion: @estblecimiento.informacion, latitud: @estblecimiento.latitud, longitud: @estblecimiento.longitud, nombre: @estblecimiento.nombre, numeracion: @estblecimiento.numeracion } }
    assert_redirected_to estblecimiento_url(@estblecimiento)
  end

  test "should destroy estblecimiento" do
    assert_difference('Estblecimiento.count', -1) do
      delete estblecimiento_url(@estblecimiento)
    end

    assert_redirected_to estblecimientos_url
  end
end
