require 'test_helper'

class VehiclePerUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_per_usuario = vehicle_per_usuarios(:one)
  end

  test "should get index" do
    get vehicle_per_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_per_usuario_url
    assert_response :success
  end

  test "should create vehicle_per_usuario" do
    assert_difference('VehiclePerUsuario.count') do
      post vehicle_per_usuarios_url, params: { vehicle_per_usuario: { certificategases: @vehicle_per_usuario.certificategases, colorVehicle: @vehicle_per_usuario.colorVehicle, insurance: @vehicle_per_usuario.insurance, plateVehicle: @vehicle_per_usuario.plateVehicle, propertyCard: @vehicle_per_usuario.propertyCard, supportToDisable: @vehicle_per_usuario.supportToDisable, usuario_id: @vehicle_per_usuario.usuario_id, vehicule_id: @vehicle_per_usuario.vehicule_id } }
    end

    assert_redirected_to vehicle_per_usuario_url(VehiclePerUsuario.last)
  end

  test "should show vehicle_per_usuario" do
    get vehicle_per_usuario_url(@vehicle_per_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_per_usuario_url(@vehicle_per_usuario)
    assert_response :success
  end

  test "should update vehicle_per_usuario" do
    patch vehicle_per_usuario_url(@vehicle_per_usuario), params: { vehicle_per_usuario: { certificategases: @vehicle_per_usuario.certificategases, colorVehicle: @vehicle_per_usuario.colorVehicle, insurance: @vehicle_per_usuario.insurance, plateVehicle: @vehicle_per_usuario.plateVehicle, propertyCard: @vehicle_per_usuario.propertyCard, supportToDisable: @vehicle_per_usuario.supportToDisable, usuario_id: @vehicle_per_usuario.usuario_id, vehicule_id: @vehicle_per_usuario.vehicule_id } }
    assert_redirected_to vehicle_per_usuario_url(@vehicle_per_usuario)
  end

  test "should destroy vehicle_per_usuario" do
    assert_difference('VehiclePerUsuario.count', -1) do
      delete vehicle_per_usuario_url(@vehicle_per_usuario)
    end

    assert_redirected_to vehicle_per_usuarios_url
  end
end
