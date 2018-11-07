require 'test_helper'

class MyfirstappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myfirstapp = myfirstapps(:one)
  end

  test "should get index" do
    get myfirstapps_url
    assert_response :success
  end

  test "should get new" do
    get new_myfirstapp_url
    assert_response :success
  end

  test "should create myfirstapp" do
    assert_difference('Myfirstapp.count') do
      post myfirstapps_url, params: { myfirstapp: {  } }
    end

    assert_redirected_to myfirstapp_url(Myfirstapp.last)
  end

  test "should show myfirstapp" do
    get myfirstapp_url(@myfirstapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_myfirstapp_url(@myfirstapp)
    assert_response :success
  end

  test "should update myfirstapp" do
    patch myfirstapp_url(@myfirstapp), params: { myfirstapp: {  } }
    assert_redirected_to myfirstapp_url(@myfirstapp)
  end

  test "should destroy myfirstapp" do
    assert_difference('Myfirstapp.count', -1) do
      delete myfirstapp_url(@myfirstapp)
    end

    assert_redirected_to myfirstapps_url
  end
end
