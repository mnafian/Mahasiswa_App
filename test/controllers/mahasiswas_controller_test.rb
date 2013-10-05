require 'test_helper'

class MahasiswasControllerTest < ActionController::TestCase
  setup do
    @mahasiswa = mahasiswas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mahasiswas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mahasiswa" do
    assert_difference('Mahasiswa.count') do
      post :create, mahasiswa: { alamat: @mahasiswa.alamat, jam_absen: @mahasiswa.jam_absen, nama: @mahasiswa.nama, nim: @mahasiswa.nim }
    end

    assert_redirected_to mahasiswa_path(assigns(:mahasiswa))
  end

  test "should show mahasiswa" do
    get :show, id: @mahasiswa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mahasiswa
    assert_response :success
  end

  test "should update mahasiswa" do
    patch :update, id: @mahasiswa, mahasiswa: { alamat: @mahasiswa.alamat, jam_absen: @mahasiswa.jam_absen, nama: @mahasiswa.nama, nim: @mahasiswa.nim }
    assert_redirected_to mahasiswa_path(assigns(:mahasiswa))
  end

  test "should destroy mahasiswa" do
    assert_difference('Mahasiswa.count', -1) do
      delete :destroy, id: @mahasiswa
    end

    assert_redirected_to mahasiswas_path
  end
end
