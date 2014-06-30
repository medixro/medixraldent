require 'test_helper'

class DiagnsControllerTest < ActionController::TestCase
  setup do
    @diagn = diagns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagn" do
    assert_difference('Diagn.count') do
      post :create, diagn: { anamn: @diagn.anamn, diagnostic: @diagn.diagnostic, pacinet_id: @diagn.pacinet_id, recom: @diagn.recom, reztc: @diagn.reztc, tparac: @diagn.tparac, var1: @diagn.var1, var2: @diagn.var2, var3: @diagn.var3, var4: @diagn.var4, var5: @diagn.var5, var: @diagn.var }
    end

    assert_redirected_to diagn_path(assigns(:diagn))
  end

  test "should show diagn" do
    get :show, id: @diagn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagn
    assert_response :success
  end

  test "should update diagn" do
    patch :update, id: @diagn, diagn: { anamn: @diagn.anamn, diagnostic: @diagn.diagnostic, pacinet_id: @diagn.pacinet_id, recom: @diagn.recom, reztc: @diagn.reztc, tparac: @diagn.tparac, var1: @diagn.var1, var2: @diagn.var2, var3: @diagn.var3, var4: @diagn.var4, var5: @diagn.var5, var: @diagn.var }
    assert_redirected_to diagn_path(assigns(:diagn))
  end

  test "should destroy diagn" do
    assert_difference('Diagn.count', -1) do
      delete :destroy, id: @diagn
    end

    assert_redirected_to diagns_path
  end
end
