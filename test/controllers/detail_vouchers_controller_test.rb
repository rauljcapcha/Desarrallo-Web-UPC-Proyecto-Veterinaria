require 'test_helper'

class DetailVouchersControllerTest < ActionController::TestCase
  setup do
    @detail_voucher = detail_vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_voucher" do
    assert_difference('DetailVoucher.count') do
      post :create, detail_voucher: { guide_id: @detail_voucher.guide_id, quantity: @detail_voucher.quantity, service_id: @detail_voucher.service_id, subtotal: @detail_voucher.subtotal, unitprice: @detail_voucher.unitprice, voucher_id: @detail_voucher.voucher_id }
    end

    assert_redirected_to detail_voucher_path(assigns(:detail_voucher))
  end

  test "should show detail_voucher" do
    get :show, id: @detail_voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_voucher
    assert_response :success
  end

  test "should update detail_voucher" do
    patch :update, id: @detail_voucher, detail_voucher: { guide_id: @detail_voucher.guide_id, quantity: @detail_voucher.quantity, service_id: @detail_voucher.service_id, subtotal: @detail_voucher.subtotal, unitprice: @detail_voucher.unitprice, voucher_id: @detail_voucher.voucher_id }
    assert_redirected_to detail_voucher_path(assigns(:detail_voucher))
  end

  test "should destroy detail_voucher" do
    assert_difference('DetailVoucher.count', -1) do
      delete :destroy, id: @detail_voucher
    end

    assert_redirected_to detail_vouchers_path
  end
end
