require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @name = "sheLifts"
  end

  test "should get root" do
    get '/'
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@name}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@name}"
  end

  test "Should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@name}"
  end
end
