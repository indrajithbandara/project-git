require 'test_helper'

class EcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecategory = ecategories(:one)
  end

  test "should get index" do
    get ecategories_url
    assert_response :success
  end

  test "should get new" do
    get new_ecategory_url
    assert_response :success
  end

  test "should create ecategory" do
    assert_difference('Ecategory.count') do
      post ecategories_url, params: { ecategory: { name: @ecategory.name } }
    end

    assert_redirected_to ecategory_url(Ecategory.last)
  end

  test "should show ecategory" do
    get ecategory_url(@ecategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecategory_url(@ecategory)
    assert_response :success
  end

  test "should update ecategory" do
    patch ecategory_url(@ecategory), params: { ecategory: { name: @ecategory.name } }
    assert_redirected_to ecategory_url(@ecategory)
  end

  test "should destroy ecategory" do
    assert_difference('Ecategory.count', -1) do
      delete ecategory_url(@ecategory)
    end

    assert_redirected_to ecategories_url
  end
end
