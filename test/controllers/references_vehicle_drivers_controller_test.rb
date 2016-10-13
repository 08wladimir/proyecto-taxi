require 'test_helper'

class ReferencesVehicleDriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @references_vehicle_driver = references_vehicle_drivers(:one)
  end

  test "should get index" do
    get references_vehicle_drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_references_vehicle_driver_url
    assert_response :success
  end

  test "should create references_vehicle_driver" do
    assert_difference('ReferencesVehicleDriver.count') do
      post references_vehicle_drivers_url, params: { references_vehicle_driver: { VehiclePerUsuario_id: @references_vehicle_driver.VehiclePerUsuario_id, commission: @references_vehicle_driver.commission, description: @references_vehicle_driver.description, driver_id: @references_vehicle_driver.driver_id, fechaFin: @references_vehicle_driver.fechaFin, fechaInicio: @references_vehicle_driver.fechaInicio, token: @references_vehicle_driver.token, usuario_id: @references_vehicle_driver.usuario_id } }
    end

    assert_redirected_to references_vehicle_driver_url(ReferencesVehicleDriver.last)
  end

  test "should show references_vehicle_driver" do
    get references_vehicle_driver_url(@references_vehicle_driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_references_vehicle_driver_url(@references_vehicle_driver)
    assert_response :success
  end

  test "should update references_vehicle_driver" do
    patch references_vehicle_driver_url(@references_vehicle_driver), params: { references_vehicle_driver: { VehiclePerUsuario_id: @references_vehicle_driver.VehiclePerUsuario_id, commission: @references_vehicle_driver.commission, description: @references_vehicle_driver.description, driver_id: @references_vehicle_driver.driver_id, fechaFin: @references_vehicle_driver.fechaFin, fechaInicio: @references_vehicle_driver.fechaInicio, token: @references_vehicle_driver.token, usuario_id: @references_vehicle_driver.usuario_id } }
    assert_redirected_to references_vehicle_driver_url(@references_vehicle_driver)
  end

  test "should destroy references_vehicle_driver" do
    assert_difference('ReferencesVehicleDriver.count', -1) do
      delete references_vehicle_driver_url(@references_vehicle_driver)
    end

    assert_redirected_to references_vehicle_drivers_url
  end
end
