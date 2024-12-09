require 'test_helper'

class StudentBookingInClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_booking_in_class = student_booking_in_classes(:one)
  end

  test "should get index" do
    get student_booking_in_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_student_booking_in_class_url
    assert_response :success
  end

  test "should create student_booking_in_class" do
    assert_difference('StudentBookingInClass.count') do
      post student_booking_in_classes_url, params: { student_booking_in_class: { class_shift: @student_booking_in_class.class_shift, id_student_in_class: @student_booking_in_class.id_student_in_class, id_user: @student_booking_in_class.id_user } }
    end

    assert_redirected_to student_booking_in_class_url(StudentBookingInClass.last)
  end

  test "should show student_booking_in_class" do
    get student_booking_in_class_url(@student_booking_in_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_booking_in_class_url(@student_booking_in_class)
    assert_response :success
  end

  test "should update student_booking_in_class" do
    patch student_booking_in_class_url(@student_booking_in_class), params: { student_booking_in_class: { class_shift: @student_booking_in_class.class_shift, id_student_in_class: @student_booking_in_class.id_student_in_class, id_user: @student_booking_in_class.id_user } }
    assert_redirected_to student_booking_in_class_url(@student_booking_in_class)
  end

  test "should destroy student_booking_in_class" do
    assert_difference('StudentBookingInClass.count', -1) do
      delete student_booking_in_class_url(@student_booking_in_class)
    end

    assert_redirected_to student_booking_in_classes_url
  end
end
