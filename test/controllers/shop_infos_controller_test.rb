require 'test_helper'

class ShopInfosControllerTest < ActionController::TestCase
  setup do
    @shop_info = shop_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_info" do
    assert_difference('ShopInfo.count') do
      post :create, shop_info: { address: @shop_info.address, lat: @shop_info.lat, lng: @shop_info.lng, name: @shop_info.name, photo: @shop_info.photo, shop_category_id: @shop_info.shop_category_id, tel: @shop_info.tel, url: @shop_info.url }
    end

    assert_redirected_to shop_info_path(assigns(:shop_info))
  end

  test "should show shop_info" do
    get :show, id: @shop_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_info
    assert_response :success
  end

  test "should update shop_info" do
    patch :update, id: @shop_info, shop_info: { address: @shop_info.address, lat: @shop_info.lat, lng: @shop_info.lng, name: @shop_info.name, photo: @shop_info.photo, shop_category_id: @shop_info.shop_category_id, tel: @shop_info.tel, url: @shop_info.url }
    assert_redirected_to shop_info_path(assigns(:shop_info))
  end

  test "should destroy shop_info" do
    assert_difference('ShopInfo.count', -1) do
      delete :destroy, id: @shop_info
    end

    assert_redirected_to shop_infos_path
  end
end
