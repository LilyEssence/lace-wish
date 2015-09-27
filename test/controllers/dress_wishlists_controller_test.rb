require 'test_helper'

class DressWishlistsControllerTest < ActionController::TestCase
  setup do
    @dress_wishlist = dress_wishlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dress_wishlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dress_wishlist" do
    assert_difference('DressWishlist.count') do
      post :create, dress_wishlist: { dress_id: @dress_wishlist.dress_id, wishlist_id: @dress_wishlist.wishlist_id }
    end

    assert_redirected_to dress_wishlist_path(assigns(:dress_wishlist))
  end

  test "should show dress_wishlist" do
    get :show, id: @dress_wishlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dress_wishlist
    assert_response :success
  end

  test "should update dress_wishlist" do
    patch :update, id: @dress_wishlist, dress_wishlist: { dress_id: @dress_wishlist.dress_id, wishlist_id: @dress_wishlist.wishlist_id }
    assert_redirected_to dress_wishlist_path(assigns(:dress_wishlist))
  end

  test "should destroy dress_wishlist" do
    assert_difference('DressWishlist.count', -1) do
      delete :destroy, id: @dress_wishlist
    end

    assert_redirected_to dress_wishlists_path
  end
end
