require 'test_helper'

class EmpedimentsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:empediments)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_empediment
    assert_difference('Empediment.count') do
      post :create, :empediment => { }
    end

    assert_redirected_to empediment_path(assigns(:empediment))
  end

  def test_should_show_empediment
    get :show, :id => empediments(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => empediments(:one).id
    assert_response :success
  end

  def test_should_update_empediment
    put :update, :id => empediments(:one).id, :empediment => { }
    assert_redirected_to empediment_path(assigns(:empediment))
  end

  def test_should_destroy_empediment
    assert_difference('Empediment.count', -1) do
      delete :destroy, :id => empediments(:one).id
    end

    assert_redirected_to empediments_path
  end
end
