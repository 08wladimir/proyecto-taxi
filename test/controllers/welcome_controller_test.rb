require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get servicios" do
    get welcome_servicios_url
    assert_response :success
  end

  test "should get contacto" do
    get welcome_contacto_url
    assert_response :success
  end

  test "should get nosotros" do
    get welcome_nosotros_url
    assert_response :success
  end

end
