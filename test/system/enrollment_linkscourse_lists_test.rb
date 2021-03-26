require "application_system_test_case"

class EnrollmentLinkscourseListsTest < ApplicationSystemTestCase
  setup do
    @enrollment_linkscourse_list = enrollment_linkscourse_lists(:one)
  end

  test "visiting the index" do
    visit enrollment_linkscourse_lists_url
    assert_selector "h1", text: "Enrollment Linkscourse Lists"
  end

  test "creating a Enrollment linkscourse list" do
    visit enrollment_linkscourse_lists_url
    click_on "New Enrollment Linkscourse List"

    fill_in "", with: @enrollment_linkscourse_list.
    click_on "Create Enrollment linkscourse list"

    assert_text "Enrollment linkscourse list was successfully created"
    click_on "Back"
  end

  test "updating a Enrollment linkscourse list" do
    visit enrollment_linkscourse_lists_url
    click_on "Edit", match: :first

    fill_in "", with: @enrollment_linkscourse_list.
    click_on "Update Enrollment linkscourse list"

    assert_text "Enrollment linkscourse list was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrollment linkscourse list" do
    visit enrollment_linkscourse_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrollment linkscourse list was successfully destroyed"
  end
end
