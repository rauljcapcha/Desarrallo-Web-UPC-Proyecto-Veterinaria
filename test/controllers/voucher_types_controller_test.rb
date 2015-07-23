require 'test_helper'

class VoucherTypesControllerTest < ActionController::TestCase
  setup do
    @voucher_type = voucher_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voucher_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voucher_type" do
    assert_difference('VoucherType.count') do
      post :create, voucher_type: { name: @voucher_type.name }
    end

    assert_redirected_to voucher_type_path(assigns(:voucher_type))
  end

  test "should show voucher_type" do
    get :show, id: @voucher_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voucher_type
    assert_response :success
  end

  test "should update voucher_type" do
    patch :update, id: @voucher_type, voucher_type: { name: @voucher_type.name }
    assert_redirected_to voucher_type_path(assigns(:voucher_type))
  end

  test "should destroy voucher_type" do
    assert_difference('VoucherType.count', -1) do
      delete :destroy, id: @voucher_type
    end

    assert_redirected_to voucher_types_path
  end
end
