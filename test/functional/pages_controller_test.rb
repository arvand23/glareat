require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

  test "should get matches" do
    get :matches
    assert_response :success
  end

end
