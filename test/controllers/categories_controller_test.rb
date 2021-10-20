require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = Category.create(cname: "Sports")
    @log_user = User.create(name: "ctest", email: "ctest@example.com",
                              password_digest: "123456")
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@log_user)
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    sign_in_as(@log_user)
    assert_difference('Category.count', 1) do
      post categories_url, params: { category: { cname: "Travel"  } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { cname: "Travel" } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end
