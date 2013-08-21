require 'test_helper'

class WallpostsControllerTest < ActionController::TestCase
  setup do
    @wallpost = wallposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wallposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wallpost" do
    assert_difference('Wallpost.count') do
      post :create, wallpost: { content: @wallpost.content, name: @wallpost.name }
    end

    assert_redirected_to wallpost_path(assigns(:wallpost))
  end

  test "should show wallpost" do
    get :show, id: @wallpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wallpost
    assert_response :success
  end

  test "should update wallpost" do
    patch :update, id: @wallpost, wallpost: { content: @wallpost.content, name: @wallpost.name }
    assert_redirected_to wallpost_path(assigns(:wallpost))
  end

  test "should destroy wallpost" do
    assert_difference('Wallpost.count', -1) do
      delete :destroy, id: @wallpost
    end

    assert_redirected_to wallposts_path
  end
end
