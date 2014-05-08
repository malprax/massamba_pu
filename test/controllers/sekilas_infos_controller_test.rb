require 'test_helper'

class SekilasInfosControllerTest < ActionController::TestCase
  setup do
    @sekilas_info = sekilas_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sekilas_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sekilas_info" do
    assert_difference('SekilasInfo.count') do
      post :create, sekilas_info: { content: @sekilas_info.content, title: @sekilas_info.title }
    end

    assert_redirected_to sekilas_info_path(assigns(:sekilas_info))
  end

  test "should show sekilas_info" do
    get :show, id: @sekilas_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sekilas_info
    assert_response :success
  end

  test "should update sekilas_info" do
    patch :update, id: @sekilas_info, sekilas_info: { content: @sekilas_info.content, title: @sekilas_info.title }
    assert_redirected_to sekilas_info_path(assigns(:sekilas_info))
  end

  test "should destroy sekilas_info" do
    assert_difference('SekilasInfo.count', -1) do
      delete :destroy, id: @sekilas_info
    end

    assert_redirected_to sekilas_infos_path
  end
end
