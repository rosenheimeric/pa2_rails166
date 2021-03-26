require "application_system_test_case"

class EnrollmentLinksTest < ApplicationSystemTestCase
  setup do
    @enrollment_link = enrollment_links(:one)
  end

  test "visiting the index" do
    visit enrollment_links_url
    assert_selector "h1", text: "Enrollment Links"
  end

  test "creating a Enrollment link" do
    visit enrollment_links_url
    click_on "New Enrollment Link"

    fill_in "", with: @enrollment_link.
    fill_in "Course list", with: @enrollment_link.course_list
    click_on "Create Enrollment link"

    assert_text "Enrollment link was successfully created"
    click_on "Back"
  end

  test "updating a Enrollment link" do
    visit enrollment_links_url
    click_on "Edit", match: :first

    fill_in "", with: @enrollment_link.
    fill_in "Course list", with: @enrollment_link.course_list
    click_on "Update Enrollment link"

    assert_text "Enrollment link was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrollment link" do
    visit enrollment_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrollment link was successfully destroyed"
  end
end
