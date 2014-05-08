require 'test_helper'

class DaftarPegawaisControllerTest < ActionController::TestCase
  setup do
    @daftar_pegawai = daftar_pegawais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daftar_pegawais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daftar_pegawai" do
    assert_difference('DaftarPegawai.count') do
      post :create, daftar_pegawai: { golongan_pangkat: @daftar_pegawai.golongan_pangkat, jabatan_id: @daftar_pegawai.jabatan_id, name: @daftar_pegawai.name, nip: @daftar_pegawai.nip, pangkat_id: @daftar_pegawai.pangkat_id }
    end

    assert_redirected_to daftar_pegawai_path(assigns(:daftar_pegawai))
  end

  test "should show daftar_pegawai" do
    get :show, id: @daftar_pegawai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daftar_pegawai
    assert_response :success
  end

  test "should update daftar_pegawai" do
    patch :update, id: @daftar_pegawai, daftar_pegawai: { golongan_pangkat: @daftar_pegawai.golongan_pangkat, jabatan_id: @daftar_pegawai.jabatan_id, name: @daftar_pegawai.name, nip: @daftar_pegawai.nip, pangkat_id: @daftar_pegawai.pangkat_id }
    assert_redirected_to daftar_pegawai_path(assigns(:daftar_pegawai))
  end

  test "should destroy daftar_pegawai" do
    assert_difference('DaftarPegawai.count', -1) do
      delete :destroy, id: @daftar_pegawai
    end

    assert_redirected_to daftar_pegawais_path
  end
end
