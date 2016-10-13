require 'test_helper'

class DriverprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driverprofile = driverprofiles(:one)
  end

  test "should get index" do
    get driverprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_driverprofile_url
    assert_response :success
  end

  test "should create driverprofile" do
    assert_difference('Driverprofile.count') do
      post driverprofiles_url, params: { driverprofile: { DriverLicense: @driverprofile.DriverLicense, InvalidSupport: @driverprofile.InvalidSupport, TipeVehicle: @driverprofile.TipeVehicle, Usuario_id: @driverprofile.Usuario_id, VehicleCapacity: @driverprofile.VehicleCapacity, VehicleOwnerCard: @driverprofile.VehicleOwnerCard, certfGoodStandingAttach: @driverprofile.certfGoodStandingAttach, identifyAttach: @driverprofile.identifyAttach, rutAttach: @driverprofile.rutAttach } }
    end

    assert_redirected_to driverprofile_url(Driverprofile.last)
  end

  test "should show driverprofile" do
    get driverprofile_url(@driverprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_driverprofile_url(@driverprofile)
    assert_response :success
  end

  test "should update driverprofile" do
    patch driverprofile_url(@driverprofile), params: { driverprofile: { DriverLicense: @driverprofile.DriverLicense, InvalidSupport: @driverprofile.InvalidSupport, TipeVehicle: @driverprofile.TipeVehicle, Usuario_id: @driverprofile.Usuario_id, VehicleCapacity: @driverprofile.VehicleCapacity, VehicleOwnerCard: @driverprofile.VehicleOwnerCard, certfGoodStandingAttach: @driverprofile.certfGoodStandingAttach, identifyAttach: @driverprofile.identifyAttach, rutAttach: @driverprofile.rutAttach } }
    assert_redirected_to driverprofile_url(@driverprofile)
  end

  test "should destroy driverprofile" do
    assert_difference('Driverprofile.count', -1) do
      delete driverprofile_url(@driverprofile)
    end

    assert_redirected_to driverprofiles_url
  end
end
