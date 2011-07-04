require 'test_helper'

class KantesControllerTest < ActionController::TestCase
  setup do
    @kante = kantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kante" do
    assert_difference('Kante.count') do
      post :create, :kante => @kante.attributes
    end

    assert_redirected_to kante_path(assigns(:kante))
  end

  test "should show kante" do
    get :show, :id => @kante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kante.to_param
    assert_response :success
  end

  test "should update kante" do
    put :update, :id => @kante.to_param, :kante => @kante.attributes
    assert_redirected_to kante_path(assigns(:kante))
  end

  test "should destroy kante" do
    assert_difference('Kante.count', -1) do
      delete :destroy, :id => @kante.to_param
    end

    assert_redirected_to kantes_path
  end
end
