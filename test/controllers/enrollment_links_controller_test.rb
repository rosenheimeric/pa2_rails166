require "test_helper"

class EnrollmentLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrollment_link = enrollment_links(:one)
  end

  test "should get index" do
    get enrollment_links_url
    assert_response :success
  end

  test "should get new" do
    get new_enrollment_link_url
    assert_response :success
  end

  test "should create enrollment_link" do
    assert_difference('EnrollmentLink.count') do
      post enrollment_links_url, params: { enrollment_link: { : @enrollment_link., course_list: @enrollment_link.course_list } }
    end

    assert_redirected_to enrollment_link_url(EnrollmentLink.last)
  end

  test "should show enrollment_link" do
    get enrollment_link_url(@enrollment_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrollment_link_url(@enrollment_link)
    assert_response :success
  end

  test "should update enrollment_link" do
    patch enrollment_link_url(@enrollment_link), params: { enrollment_link: { : @enrollment_link., course_list: @enrollment_link.course_list } }
    assert_redirected_to enrollment_link_url(@enrollment_link)
  end

  test "should destroy enrollment_link" do
    assert_difference('EnrollmentLink.count', -1) do
      delete enrollment_link_url(@enrollment_link)
    end

    assert_redirected_to enrollment_links_url
  end
end
