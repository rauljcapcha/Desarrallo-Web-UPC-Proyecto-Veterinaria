require 'test_helper'

class AtentionsControllerTest < ActionController::TestCase
  setup do
    @atention = atentions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atentions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atention" do
    assert_difference('Atention.count') do
      post :create, atention: { customer_id: @atention.customer_id, pet_id: @atention.pet_id, veterinary_appointment_id: @atention.veterinary_appointment_id }
    end

    assert_redirected_to atention_path(assigns(:atention))
  end

  test "should show atention" do
    get :show, id: @atention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atention
    assert_response :success
  end

  test "should update atention" do
    patch :update, id: @atention, atention: { customer_id: @atention.customer_id, pet_id: @atention.pet_id, veterinary_appointment_id: @atention.veterinary_appointment_id }
    assert_redirected_to atention_path(assigns(:atention))
  end

  test "should destroy atention" do
    assert_difference('Atention.count', -1) do
      delete :destroy, id: @atention
    end

    assert_redirected_to atentions_path
  end
end
