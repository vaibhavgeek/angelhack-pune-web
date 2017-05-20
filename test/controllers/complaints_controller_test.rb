require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get complaints_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_url
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post complaints_url, params: { complaint: { assigned_officer: @complaint.assigned_officer, caste: @complaint.caste, complaint_pic: @complaint.complaint_pic, complaint_text: @complaint.complaint_text, gender: @complaint.gender, labels: @complaint.labels, location: @complaint.location, nature: @complaint.nature, religion: @complaint.religion, status: @complaint.status } }
    end

    assert_redirected_to complaint_url(Complaint.last)
  end

  test "should show complaint" do
    get complaint_url(@complaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_url(@complaint)
    assert_response :success
  end

  test "should update complaint" do
    patch complaint_url(@complaint), params: { complaint: { assigned_officer: @complaint.assigned_officer, caste: @complaint.caste, complaint_pic: @complaint.complaint_pic, complaint_text: @complaint.complaint_text, gender: @complaint.gender, labels: @complaint.labels, location: @complaint.location, nature: @complaint.nature, religion: @complaint.religion, status: @complaint.status } }
    assert_redirected_to complaint_url(@complaint)
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete complaint_url(@complaint)
    end

    assert_redirected_to complaints_url
  end
end
