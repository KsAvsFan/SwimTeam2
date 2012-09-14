require 'test_helper'

class FamiliesControllerTest < ActionController::TestCase
  setup do
    @family = families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family" do
    assert_difference('Family.count') do
      post :create, family: { c1_email: @family.c1_email, c1_first_name: @family.c1_first_name, c1_home_phone: @family.c1_home_phone, c1_last_name: @family.c1_last_name, c1_mobile_phone: @family.c1_mobile_phone, c1_relationship: @family.c1_relationship, c1_work_phone: @family.c1_work_phone, c2_email: @family.c2_email, c2_first_name: @family.c2_first_name, c2_home_phone: @family.c2_home_phone, c2_last_name: @family.c2_last_name, c2_mobile_phone: @family.c2_mobile_phone, c2_relationship: @family.c2_relationship, c2_work_phone: @family.c2_work_phone, emergency_contact: @family.emergency_contact, name: @family.name }
    end

    assert_redirected_to family_path(assigns(:family))
  end

  test "should show family" do
    get :show, id: @family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family
    assert_response :success
  end

  test "should update family" do
    put :update, id: @family, family: { c1_email: @family.c1_email, c1_first_name: @family.c1_first_name, c1_home_phone: @family.c1_home_phone, c1_last_name: @family.c1_last_name, c1_mobile_phone: @family.c1_mobile_phone, c1_relationship: @family.c1_relationship, c1_work_phone: @family.c1_work_phone, c2_email: @family.c2_email, c2_first_name: @family.c2_first_name, c2_home_phone: @family.c2_home_phone, c2_last_name: @family.c2_last_name, c2_mobile_phone: @family.c2_mobile_phone, c2_relationship: @family.c2_relationship, c2_work_phone: @family.c2_work_phone, emergency_contact: @family.emergency_contact, name: @family.name }
    assert_redirected_to family_path(assigns(:family))
  end

  test "should destroy family" do
    assert_difference('Family.count', -1) do
      delete :destroy, id: @family
    end

    assert_redirected_to families_path
  end
end
