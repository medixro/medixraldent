require 'test_helper'

class ProgramarisControllerTest < ActionController::TestCase
  setup do
    @programari = programaris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programaris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programari" do
    assert_difference('Programari.count') do
      post :create, programari: { data: @programari.data, medicul: @programari.medicul, ora: @programari.ora, pacient_id: @programari.pacient_id, tip: @programari.tip, var1: @programari.var1, var2: @programari.var2, var3: @programari.var3, var4: @programari.var4, var5: @programari.var5, var: @programari.var }
    end

    assert_redirected_to programari_path(assigns(:programari))
  end

  test "should show programari" do
    get :show, id: @programari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programari
    assert_response :success
  end

  test "should update programari" do
    patch :update, id: @programari, programari: { data: @programari.data, medicul: @programari.medicul, ora: @programari.ora, pacient_id: @programari.pacient_id, tip: @programari.tip, var1: @programari.var1, var2: @programari.var2, var3: @programari.var3, var4: @programari.var4, var5: @programari.var5, var: @programari.var }
    assert_redirected_to programari_path(assigns(:programari))
  end

  test "should destroy programari" do
    assert_difference('Programari.count', -1) do
      delete :destroy, id: @programari
    end

    assert_redirected_to programaris_path
  end
end
