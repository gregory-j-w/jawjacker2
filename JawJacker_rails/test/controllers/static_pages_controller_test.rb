require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "JawJacker"
  end

  test "should get help" do
    gget help_path
    assert_response :success
    assert_select "title", "Help | JawJacker"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | JawJacker"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | JawJacker"
  end
end
