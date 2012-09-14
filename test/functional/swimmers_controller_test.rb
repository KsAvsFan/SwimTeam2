require 'test_helper'

class SwimmersControllerTest < ActionController::TestCase
  setup do
    @swimmer = swimmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swimmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swimmer" do
    assert_difference('Swimmer.count') do
      post :create, swimmer: { dob: @swimmer.dob, email: @swimmer.email, family_id: @swimmer.family_id, first_name: @swimmer.first_name, gender: @swimmer.gender, last_name: @swimmer.last_name, shirt_size: @swimmer.shirt_size }
    end

    assert_redirected_to swimmer_path(assigns(:swimmer))
  end

  test "should show swimmer" do
    get :show, id: @swimmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swimmer
    assert_response :success
  end

  test "should update swimmer" do
    put :update, id: @swimmer, swimmer: { dob: @swimmer.dob, email: @swimmer.email, family_id: @swimmer.family_id, first_name: @swimmer.first_name, gender: @swimmer.gender, last_name: @swimmer.last_name, shirt_size: @swimmer.shirt_size }
    assert_redirected_to swimmer_path(assigns(:swimmer))
  end

  test "should destroy swimmer" do
    assert_difference('Swimmer.count', -1) do
      delete :destroy, id: @swimmer
    end

    assert_redirected_to swimmers_path
  end
end
