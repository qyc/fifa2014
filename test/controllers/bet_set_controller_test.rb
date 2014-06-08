require 'test_helper'

class BetSetControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

end
