require 'test_helper'

class CastsControllerTest < ActionController::TestCase
  setup do
    @cast = casts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cast" do
    assert_difference('Cast.count') do
      post :create, cast: { age: @cast.age, bust: @cast.bust, cup: @cast.cup, free_after: @cast.free_after, hip: @cast.hip, name: @cast.name, photo: @cast.photo, play_kind_id: @cast.play_kind_id, price: @cast.price, shop_info_id: @cast.shop_info_id, tall: @cast.tall, waist: @cast.waist }
    end

    assert_redirected_to cast_path(assigns(:cast))
  end

  test "should show cast" do
    get :show, id: @cast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cast
    assert_response :success
  end

  test "should update cast" do
    patch :update, id: @cast, cast: { age: @cast.age, bust: @cast.bust, cup: @cast.cup, free_after: @cast.free_after, hip: @cast.hip, name: @cast.name, photo: @cast.photo, play_kind_id: @cast.play_kind_id, price: @cast.price, shop_info_id: @cast.shop_info_id, tall: @cast.tall, waist: @cast.waist }
    assert_redirected_to cast_path(assigns(:cast))
  end

  test "should destroy cast" do
    assert_difference('Cast.count', -1) do
      delete :destroy, id: @cast
    end

    assert_redirected_to casts_path
  end
end
