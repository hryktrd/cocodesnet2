require 'test_helper'

class PlayKindsControllerTest < ActionController::TestCase
  setup do
    @play_kind = play_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:play_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play_kind" do
    assert_difference('PlayKind.count') do
      post :create, play_kind: { kind: @play_kind.kind }
    end

    assert_redirected_to play_kind_path(assigns(:play_kind))
  end

  test "should show play_kind" do
    get :show, id: @play_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play_kind
    assert_response :success
  end

  test "should update play_kind" do
    patch :update, id: @play_kind, play_kind: { kind: @play_kind.kind }
    assert_redirected_to play_kind_path(assigns(:play_kind))
  end

  test "should destroy play_kind" do
    assert_difference('PlayKind.count', -1) do
      delete :destroy, id: @play_kind
    end

    assert_redirected_to play_kinds_path
  end
end
