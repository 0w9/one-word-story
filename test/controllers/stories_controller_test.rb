require "test_helper"

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get stories_create_url
    assert_response :success
  end

  test "should get index" do
    get stories_index_url
    assert_response :success
  end
end
