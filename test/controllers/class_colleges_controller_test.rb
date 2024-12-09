require 'test_helper'

class ClassCollegesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_college = class_colleges(:one)
  end

  test "should get index" do
    get class_colleges_url
    assert_response :success
  end

  test "should get new" do
    get new_class_college_url
    assert_response :success
  end

  test "should create class_college" do
    assert_difference('ClassCollege.count') do
      post class_colleges_url, params: { class_college: { class_shift: @class_college.class_shift, id_schedule: @class_college.id_schedule, id_student_in_class: @class_college.id_student_in_class, id_subject: @class_college.id_subject, id_user: @class_college.id_user, max_number_students: @class_college.max_number_students, year: @class_college.year } }
    end

    assert_redirected_to class_college_url(ClassCollege.last)
  end

  test "should show class_college" do
    get class_college_url(@class_college)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_college_url(@class_college)
    assert_response :success
  end

  test "should update class_college" do
    patch class_college_url(@class_college), params: { class_college: { class_shift: @class_college.class_shift, id_schedule: @class_college.id_schedule, id_student_in_class: @class_college.id_student_in_class, id_subject: @class_college.id_subject, id_user: @class_college.id_user, max_number_students: @class_college.max_number_students, year: @class_college.year } }
    assert_redirected_to class_college_url(@class_college)
  end

  test "should destroy class_college" do
    assert_difference('ClassCollege.count', -1) do
      delete class_college_url(@class_college)
    end

    assert_redirected_to class_colleges_url
  end
end
