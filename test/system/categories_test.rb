require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
    @user = users(:two)
    # visit sign_in_url
    # fill_in "Email", with: "test1@mail.com"
    # fill_in "Password", with: "123456"
    # click_button "Sign In"
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
    click_on "", match: :first

    fill_in "Category Name", with: 'Sporty'
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit categories_url
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
