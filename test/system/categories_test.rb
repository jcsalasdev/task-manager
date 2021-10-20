require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = Category.create(cname: "Sports")
    @log_user = User.create(name: "ctest", email: "ctest@example.com",
                              password_digest: "123456")
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "CATEGORIES"
  end

  test "creating a Category" do
    visit categories_url
    click_on "New Category"

    fill_in "Category Name", with: "Travel"
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Cname", with: 'Sporty'
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
