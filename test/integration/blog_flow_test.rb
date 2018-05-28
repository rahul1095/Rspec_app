require './test/test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
   fixtures :all

  test "login and browse site" do
    # login via https
    https!
    get "/users/sign_in"
    assert_response :success
    
    post_via_redirect "/users/sign_in", :username => users(:first_person).email, :password => users(:first_person).password
     assert_equal '/users/sign_in', path
    # assert_equal 'Welcome avs!', flash[:notice]
    assert_select 'title', "Welcome to Rails Testing Guide title"

    https!(false)
    get "/articles"
    assert_response :success
     assert assigns(:articles)
  end
end