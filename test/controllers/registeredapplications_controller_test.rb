require 'test_helper'

class RegisteredapplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registeredapplications_index_url
    assert_response :success
  end

  test "should get show" do
    get registeredapplications_show_url
    assert_response :success
  end

  test "should get new" do
    get registeredapplications_new_url
    assert_response :success
  end

  test "should get create" do
    get registeredapplications_create_url
    assert_response :success
  end

  test "should get edit" do
    get registeredapplications_edit_url
    assert_response :success
  end

  test "should get update" do
    get registeredapplications_update_url
    assert_response :success
  end

  test "should get destroy" do
    get registeredapplications_destroy_url
    assert_response :success
  end

end
