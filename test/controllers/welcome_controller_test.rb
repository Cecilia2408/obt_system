require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get mainpage" do
    get :mainpage
    assert_response :success
  end

end
