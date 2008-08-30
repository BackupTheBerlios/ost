require 'test_helper'

class SubtasksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:subtasks)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_subtask
    assert_difference('Subtask.count') do
      post :create, :subtask => { }
    end

    assert_redirected_to subtask_path(assigns(:subtask))
  end

  def test_should_show_subtask
    get :show, :id => subtasks(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => subtasks(:one).id
    assert_response :success
  end

  def test_should_update_subtask
    put :update, :id => subtasks(:one).id, :subtask => { }
    assert_redirected_to subtask_path(assigns(:subtask))
  end

  def test_should_destroy_subtask
    assert_difference('Subtask.count', -1) do
      delete :destroy, :id => subtasks(:one).id
    end

    assert_redirected_to subtasks_path
  end
end
