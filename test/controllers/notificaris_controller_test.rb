require 'test_helper'

class NotificarisControllerTest < ActionController::TestCase
  setup do
    @notificari = notificaris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notificaris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notificari" do
    assert_difference('Notificari.count') do
      post :create, notificari: { pacient_id: @notificari.pacient_id, text: @notificari.text, var1: @notificari.var1, var2: @notificari.var2, var3: @notificari.var3, var4: @notificari.var4, var5: @notificari.var5, var: @notificari.var }
    end

    assert_redirected_to notificari_path(assigns(:notificari))
  end

  test "should show notificari" do
    get :show, id: @notificari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notificari
    assert_response :success
  end

  test "should update notificari" do
    patch :update, id: @notificari, notificari: { pacient_id: @notificari.pacient_id, text: @notificari.text, var1: @notificari.var1, var2: @notificari.var2, var3: @notificari.var3, var4: @notificari.var4, var5: @notificari.var5, var: @notificari.var }
    assert_redirected_to notificari_path(assigns(:notificari))
  end

  test "should destroy notificari" do
    assert_difference('Notificari.count', -1) do
      delete :destroy, id: @notificari
    end

    assert_redirected_to notificaris_path
  end
end
