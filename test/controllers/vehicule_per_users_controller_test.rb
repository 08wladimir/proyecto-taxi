require 'test_helper'

class VehiculePerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicule_per_user = vehicule_per_users(:one)
  end

  test "should get index" do
    get vehicule_per_users_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicule_per_user_url
    assert_response :success
  end

  test "should create vehicule_per_user" do
    assert_difference('VehiculePerUser.count') do
      post vehicule_per_users_url, params: { vehicule_per_user: { Usuario_id: @vehicule_per_user.Usuario_id, Vehicule_id: @vehicule_per_user.Vehicule_id, certificategases: @vehicule_per_user.certificategases, drivinLlicense: @vehicule_per_user.drivinLlicense, identityCard: @vehicule_per_user.identityCard, insurance: @vehicule_per_user.insurance, peaceCertificate: @vehicule_per_user.peaceCertificate, propertyCard: @vehicule_per_user.propertyCard, rut: @vehicule_per_user.rut, supportToDisable: @vehicule_per_user.supportToDisable } }
    end

    assert_redirected_to vehicule_per_user_url(VehiculePerUser.last)
  end

  test "should show vehicule_per_user" do
    get vehicule_per_user_url(@vehicule_per_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicule_per_user_url(@vehicule_per_user)
    assert_response :success
  end

  test "should update vehicule_per_user" do
    patch vehicule_per_user_url(@vehicule_per_user), params: { vehicule_per_user: { Usuario_id: @vehicule_per_user.Usuario_id, Vehicule_id: @vehicule_per_user.Vehicule_id, certificategases: @vehicule_per_user.certificategases, drivinLlicense: @vehicule_per_user.drivinLlicense, identityCard: @vehicule_per_user.identityCard, insurance: @vehicule_per_user.insurance, peaceCertificate: @vehicule_per_user.peaceCertificate, propertyCard: @vehicule_per_user.propertyCard, rut: @vehicule_per_user.rut, supportToDisable: @vehicule_per_user.supportToDisable } }
    assert_redirected_to vehicule_per_user_url(@vehicule_per_user)
  end

  test "should destroy vehicule_per_user" do
    assert_difference('VehiculePerUser.count', -1) do
      delete vehicule_per_user_url(@vehicule_per_user)
    end

    assert_redirected_to vehicule_per_users_url
  end
end
