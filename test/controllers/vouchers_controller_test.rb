require 'test_helper'

class VouchersControllerTest < ActionController::TestCase
  setup do
    @voucher = vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voucher" do
    assert_difference('Voucher.count') do
      post :create, voucher: { atention_id: @voucher.atention_id, customer_id: @voucher.customer_id, pet_id: @voucher.pet_id, seller_id: @voucher.seller_id, serialnumber: @voucher.serialnumber, total: @voucher.total, voucher_type_id: @voucher.voucher_type_id, vouchernumber: @voucher.vouchernumber }
    end

    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should show voucher" do
    get :show, id: @voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voucher
    assert_response :success
  end

  test "should update voucher" do
    patch :update, id: @voucher, voucher: { atention_id: @voucher.atention_id, customer_id: @voucher.customer_id, pet_id: @voucher.pet_id, seller_id: @voucher.seller_id, serialnumber: @voucher.serialnumber, total: @voucher.total, voucher_type_id: @voucher.voucher_type_id, vouchernumber: @voucher.vouchernumber }
    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should destroy voucher" do
    assert_difference('Voucher.count', -1) do
      delete :destroy, id: @voucher
    end

    assert_redirected_to vouchers_path
  end
end
