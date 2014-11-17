require 'test_helper'

class OutsourcesControllerTest < ActionController::TestCase
  setup do
    @outsource = outsources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outsources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outsource" do
    assert_difference('Outsource.count') do
      post :create, outsource: { country: @outsource.country, description: @outsource.description, email: @outsource.email, name: @outsource.name, phone: @outsource.phone, type: @outsource.type }
    end

    assert_redirected_to outsource_path(assigns(:outsource))
  end

  test "should show outsource" do
    get :show, id: @outsource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outsource
    assert_response :success
  end

  test "should update outsource" do
    put :update, id: @outsource, outsource: { country: @outsource.country, description: @outsource.description, email: @outsource.email, name: @outsource.name, phone: @outsource.phone, type: @outsource.type }
    assert_redirected_to outsource_path(assigns(:outsource))
  end

  test "should destroy outsource" do
    assert_difference('Outsource.count', -1) do
      delete :destroy, id: @outsource
    end

    assert_redirected_to outsources_path
  end
end
