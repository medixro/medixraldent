require 'test_helper'

class RezultatesControllerTest < ActionController::TestCase
  setup do
    @rezultate = rezultates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rezultates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rezultate" do
    assert_difference('Rezultate.count') do
      post :create, rezultate: { diagn: @rezultate.diagn, exam: @rezultate.exam, image: @rezultate.image, pacient_id: @rezultate.pacient_id, var1: @rezultate.var1, var2: @rezultate.var2, var3: @rezultate.var3, var4: @rezultate.var4, var5: @rezultate.var5, var: @rezultate.var }
    end

    assert_redirected_to rezultate_path(assigns(:rezultate))
  end

  test "should show rezultate" do
    get :show, id: @rezultate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rezultate
    assert_response :success
  end

  test "should update rezultate" do
    patch :update, id: @rezultate, rezultate: { diagn: @rezultate.diagn, exam: @rezultate.exam, image: @rezultate.image, pacient_id: @rezultate.pacient_id, var1: @rezultate.var1, var2: @rezultate.var2, var3: @rezultate.var3, var4: @rezultate.var4, var5: @rezultate.var5, var: @rezultate.var }
    assert_redirected_to rezultate_path(assigns(:rezultate))
  end

  test "should destroy rezultate" do
    assert_difference('Rezultate.count', -1) do
      delete :destroy, id: @rezultate
    end

    assert_redirected_to rezultates_path
  end
end
