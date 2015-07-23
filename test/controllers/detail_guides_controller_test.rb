require 'test_helper'

class DetailGuidesControllerTest < ActionController::TestCase
  setup do
    @detail_guide = detail_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_guide" do
    assert_difference('DetailGuide.count') do
      post :create, detail_guide: { guide_id: @detail_guide.guide_id, note: @detail_guide.note, product_id: @detail_guide.product_id, quantity: @detail_guide.quantity, subtotal: @detail_guide.subtotal, unitprice: @detail_guide.unitprice }
    end

    assert_redirected_to detail_guide_path(assigns(:detail_guide))
  end

  test "should show detail_guide" do
    get :show, id: @detail_guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_guide
    assert_response :success
  end

  test "should update detail_guide" do
    patch :update, id: @detail_guide, detail_guide: { guide_id: @detail_guide.guide_id, note: @detail_guide.note, product_id: @detail_guide.product_id, quantity: @detail_guide.quantity, subtotal: @detail_guide.subtotal, unitprice: @detail_guide.unitprice }
    assert_redirected_to detail_guide_path(assigns(:detail_guide))
  end

  test "should destroy detail_guide" do
    assert_difference('DetailGuide.count', -1) do
      delete :destroy, id: @detail_guide
    end

    assert_redirected_to detail_guides_path
  end
end
