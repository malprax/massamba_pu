require 'test_helper'

class DpuBeritaControllerTest < ActionController::TestCase
  setup do
    @dpu_beritum = dpu_berita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dpu_berita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dpu_beritum" do
    assert_difference('DpuBeritum.count') do
      post :create, dpu_beritum: { content: @dpu_beritum.content, title: @dpu_beritum.title }
    end

    assert_redirected_to dpu_beritum_path(assigns(:dpu_beritum))
  end

  test "should show dpu_beritum" do
    get :show, id: @dpu_beritum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dpu_beritum
    assert_response :success
  end

  test "should update dpu_beritum" do
    patch :update, id: @dpu_beritum, dpu_beritum: { content: @dpu_beritum.content, title: @dpu_beritum.title }
    assert_redirected_to dpu_beritum_path(assigns(:dpu_beritum))
  end

  test "should destroy dpu_beritum" do
    assert_difference('DpuBeritum.count', -1) do
      delete :destroy, id: @dpu_beritum
    end

    assert_redirected_to dpu_berita_path
  end
end
