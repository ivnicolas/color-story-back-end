require "test_helper"

class ColorStoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_story = color_stories(:one)
  end

  test "should get index" do
    get color_stories_url, as: :json
    assert_response :success
  end

  test "should create color_story" do
    assert_difference('ColorStory.count') do
      post color_stories_url, params: { color_story: { color_code: @color_story.color_code, date: @color_story.date, description: @color_story.description, title: @color_story.title, user_id: @color_story.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show color_story" do
    get color_story_url(@color_story), as: :json
    assert_response :success
  end

  test "should update color_story" do
    patch color_story_url(@color_story), params: { color_story: { color_code: @color_story.color_code, date: @color_story.date, description: @color_story.description, title: @color_story.title, user_id: @color_story.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy color_story" do
    assert_difference('ColorStory.count', -1) do
      delete color_story_url(@color_story), as: :json
    end

    assert_response 204
  end
end
