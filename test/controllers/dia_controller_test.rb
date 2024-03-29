require 'test_helper'

class DiaControllerTest < ActionController::TestCase
  setup do
    @dium = dia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dium" do
    assert_difference('Dium.count') do
      post :create, dium: { anamn: @dium.anamn, diagn: @dium.diagn, pacient_id: @dium.pacient_id, recomandari: @dium.recomandari, reztc: @dium.reztc, tparac: @dium.tparac, var1: @dium.var1, var2: @dium.var2, var3: @dium.var3, var4: @dium.var4, var5: @dium.var5, var: @dium.var }
    end

    assert_redirected_to dium_path(assigns(:dium))
  end

  test "should show dium" do
    get :show, id: @dium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dium
    assert_response :success
  end

  test "should update dium" do
    patch :update, id: @dium, dium: { anamn: @dium.anamn, diagn: @dium.diagn, pacient_id: @dium.pacient_id, recomandari: @dium.recomandari, reztc: @dium.reztc, tparac: @dium.tparac, var1: @dium.var1, var2: @dium.var2, var3: @dium.var3, var4: @dium.var4, var5: @dium.var5, var: @dium.var }
    assert_redirected_to dium_path(assigns(:dium))
  end

  test "should destroy dium" do
    assert_difference('Dium.count', -1) do
      delete :destroy, id: @dium
    end

    assert_redirected_to dia_path
  end
end
