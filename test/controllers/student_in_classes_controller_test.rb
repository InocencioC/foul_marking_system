require 'test_helper'

class StudentInClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_in_class = student_in_classes(:one)
  end

  test "should get index" do
    get student_in_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_student_in_class_url
    assert_response :success
  end

  test "should create student_in_class" do
    assert_difference('StudentInClass.count') do
      post student_in_classes_url, params: { student_in_class: { age: @student_in_class.age, fullname: @student_in_class.fullname, id_class_year: @student_in_class.id_class_year, id_student: @student_in_class.id_student } }
    end

    assert_redirected_to student_in_class_url(StudentInClass.last)
  end

  test "should show student_in_class" do
    get student_in_class_url(@student_in_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_in_class_url(@student_in_class)
    assert_response :success
  end

  test "should update student_in_class" do
    patch student_in_class_url(@student_in_class), params: { student_in_class: { age: @student_in_class.age, fullname: @student_in_class.fullname, id_class_year: @student_in_class.id_class_year, id_student: @student_in_class.id_student } }
    assert_redirected_to student_in_class_url(@student_in_class)
  end

  test "should destroy student_in_class" do
    assert_difference('StudentInClass.count', -1) do
      delete student_in_class_url(@student_in_class)
    end

    assert_redirected_to student_in_classes_url
  end
end
