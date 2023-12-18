require "test_helper"

class ReceptionistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get receptionists_new_url
    assert_response :success
  end

  test "should get create" do
    get receptionists_create_url
    assert_response :success
  end
end
