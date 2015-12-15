require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { CSS: @user.CSS, HTML: @user.HTML, OOP: @user.OOP, communication: @user.communication, db: @user.db, debugging: @user.debugging, email: @user.email, energy: @user.energy, fullname: @user.fullname, intelligence: @user.intelligence, javascript: @user.javascript, modular: @user.modular, motivation: @user.motivation, problemsolving: @user.problemsolving, projectURL: @user.projectURL, repoURL: @user.repoURL, stack: @user.stack, team: @user.team }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { CSS: @user.CSS, HTML: @user.HTML, OOP: @user.OOP, communication: @user.communication, db: @user.db, debugging: @user.debugging, email: @user.email, energy: @user.energy, fullname: @user.fullname, intelligence: @user.intelligence, javascript: @user.javascript, modular: @user.modular, motivation: @user.motivation, problemsolving: @user.problemsolving, projectURL: @user.projectURL, repoURL: @user.repoURL, stack: @user.stack, team: @user.team }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
