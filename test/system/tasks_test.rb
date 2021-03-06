require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
    # visit sign_in_url
    # fill_in "Email", with: "test1@mail.com"
    # fill_in "Password", with: "123456"
    # click_button "Sign In"
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: ""
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "Description", with: "description test"
    fill_in "Title", with: "tasktest"
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    fill_in "Description", with: "description update"
    fill_in "Title", with: "tasktest"
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end
