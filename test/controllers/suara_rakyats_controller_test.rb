require 'test_helper'

class SuaraRakyatsControllerTest < ActionController::TestCase
  setup do
    @suara_rakyat = suara_rakyats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suara_rakyats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suara_rakyat" do
    assert_difference('SuaraRakyat.count') do
      post :create, suara_rakyat: { contact_person: @suara_rakyat.contact_person, content: @suara_rakyat.content, name: @suara_rakyat.name }
    end

    assert_redirected_to suara_rakyat_path(assigns(:suara_rakyat))
  end

  test "should show suara_rakyat" do
    get :show, id: @suara_rakyat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suara_rakyat
    assert_response :success
  end

  test "should update suara_rakyat" do
    patch :update, id: @suara_rakyat, suara_rakyat: { contact_person: @suara_rakyat.contact_person, content: @suara_rakyat.content, name: @suara_rakyat.name }
    assert_redirected_to suara_rakyat_path(assigns(:suara_rakyat))
  end

  test "should destroy suara_rakyat" do
    assert_difference('SuaraRakyat.count', -1) do
      delete :destroy, id: @suara_rakyat
    end

    assert_redirected_to suara_rakyats_path
  end
end
