require "test_helper"

class EnrollmentLinkscourseListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrollment_linkscourse_list = enrollment_linkscourse_lists(:one)
  end

  test "should get index" do
    get enrollment_linkscourse_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_enrollment_linkscourse_list_url
    assert_response :success
  end

  test "should create enrollment_linkscourse_list" do
    assert_difference('EnrollmentLinkscourseList.count') do
      post enrollment_linkscourse_lists_url, params: { enrollment_linkscourse_list: { : @enrollment_linkscourse_list. } }
    end

    assert_redirected_to enrollment_linkscourse_list_url(EnrollmentLinkscourseList.last)
  end

  test "should show enrollment_linkscourse_list" do
    get enrollment_linkscourse_list_url(@enrollment_linkscourse_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrollment_linkscourse_list_url(@enrollment_linkscourse_list)
    assert_response :success
  end

  test "should update enrollment_linkscourse_list" do
    patch enrollment_linkscourse_list_url(@enrollment_linkscourse_list), params: { enrollment_linkscourse_list: { : @enrollment_linkscourse_list. } }
    assert_redirected_to enrollment_linkscourse_list_url(@enrollment_linkscourse_list)
  end

  test "should destroy enrollment_linkscourse_list" do
    assert_difference('EnrollmentLinkscourseList.count', -1) do
      delete enrollment_linkscourse_list_url(@enrollment_linkscourse_list)
    end

    assert_redirected_to enrollment_linkscourse_lists_url
  end
end
