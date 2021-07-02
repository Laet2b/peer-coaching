require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:text" do
    get skills_name:text_url
    assert_response :success
  end

  test "should get user:references" do
    get skills_user:references_url
    assert_response :success
  end

  test "should get description:text" do
    get skills_description:text_url
    assert_response :success
  end
end
