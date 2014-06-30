require 'test_helper'

class PacientsControllerTest < ActionController::TestCase
  setup do
    @pacient = pacients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacient" do
    assert_difference('Pacient.count') do
      post :create, pacient: { adresa: @pacient.adresa, email: @pacient.email, nrtel: @pacient.nrtel, nume: @pacient.nume, prenume: @pacient.prenume, var1: @pacient.var1, var2: @pacient.var2, var3: @pacient.var3, var4: @pacient.var4, var5: @pacient.var5, var: @pacient.var }
    end

    assert_redirected_to pacient_path(assigns(:pacient))
  end

  test "should show pacient" do
    get :show, id: @pacient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacient
    assert_response :success
  end

  test "should update pacient" do
    patch :update, id: @pacient, pacient: { adresa: @pacient.adresa, email: @pacient.email, nrtel: @pacient.nrtel, nume: @pacient.nume, prenume: @pacient.prenume, var1: @pacient.var1, var2: @pacient.var2, var3: @pacient.var3, var4: @pacient.var4, var5: @pacient.var5, var: @pacient.var }
    assert_redirected_to pacient_path(assigns(:pacient))
  end

  test "should destroy pacient" do
    assert_difference('Pacient.count', -1) do
      delete :destroy, id: @pacient
    end

    assert_redirected_to pacients_path
  end
end
