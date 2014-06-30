require 'test_helper'

class DiagsControllerTest < ActionController::TestCase
  setup do
    @diag = diags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diag" do
    assert_difference('Diag.count') do
      post :create, diag: { anamn: @diag.anamn, diagnostic: @diag.diagnostic, recom: @diag.recom, reztc: @diag.reztc, tparac: @diag.tparac, var1: @diag.var1, var2: @diag.var2, var3: @diag.var3, var4: @diag.var4, var5: @diag.var5, var: @diag.var }
    end

    assert_redirected_to diag_path(assigns(:diag))
  end

  test "should show diag" do
    get :show, id: @diag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diag
    assert_response :success
  end

  test "should update diag" do
    patch :update, id: @diag, diag: { anamn: @diag.anamn, diagnostic: @diag.diagnostic, recom: @diag.recom, reztc: @diag.reztc, tparac: @diag.tparac, var1: @diag.var1, var2: @diag.var2, var3: @diag.var3, var4: @diag.var4, var5: @diag.var5, var: @diag.var }
    assert_redirected_to diag_path(assigns(:diag))
  end

  test "should destroy diag" do
    assert_difference('Diag.count', -1) do
      delete :destroy, id: @diag
    end

    assert_redirected_to diags_path
  end
end
