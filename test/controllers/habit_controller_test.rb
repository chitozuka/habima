require 'test_helper'

class HabitControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get habit_new_url
    assert_response :success
  end

end
