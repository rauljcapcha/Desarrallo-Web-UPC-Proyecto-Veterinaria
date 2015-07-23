require 'test_helper'

class VeterinaryUsersControllerTest < ActionController::TestCase
  setup do
    @veterinary_user = veterinary_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinary_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinary_user" do
    assert_difference('VeterinaryUser.count') do
      post :create, veterinary_user: { nameuser: @veterinary_user.nameuser, passworduser: @veterinary_user.passworduser }
    end

    assert_redirected_to veterinary_user_path(assigns(:veterinary_user))
  end

  test "should show veterinary_user" do
    get :show, id: @veterinary_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinary_user
    assert_response :success
  end

  test "should update veterinary_user" do
    patch :update, id: @veterinary_user, veterinary_user: { nameuser: @veterinary_user.nameuser, passworduser: @veterinary_user.passworduser }
    assert_redirected_to veterinary_user_path(assigns(:veterinary_user))
  end

  test "should destroy veterinary_user" do
    assert_difference('VeterinaryUser.count', -1) do
      delete :destroy, id: @veterinary_user
    end

    assert_redirected_to veterinary_users_path
  end
end
