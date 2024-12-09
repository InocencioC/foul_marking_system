require "application_system_test_case"

class StudentBookingInClassesTest < ApplicationSystemTestCase
  setup do
    @student_booking_in_class = student_booking_in_classes(:one)
  end

  test "visiting the index" do
    visit student_booking_in_classes_url
    assert_selector "h1", text: "Student Booking In Classes"
  end

  test "creating a Student booking in class" do
    visit student_booking_in_classes_url
    click_on "New Student Booking In Class"

    fill_in "Class shift", with: @student_booking_in_class.class_shift
    fill_in "Id student in class", with: @student_booking_in_class.id_student_in_class
    fill_in "Id user", with: @student_booking_in_class.id_user
    click_on "Create Student booking in class"

    assert_text "Student booking in class was successfully created"
    click_on "Back"
  end

  test "updating a Student booking in class" do
    visit student_booking_in_classes_url
    click_on "Edit", match: :first

    fill_in "Class shift", with: @student_booking_in_class.class_shift
    fill_in "Id student in class", with: @student_booking_in_class.id_student_in_class
    fill_in "Id user", with: @student_booking_in_class.id_user
    click_on "Update Student booking in class"

    assert_text "Student booking in class was successfully updated"
    click_on "Back"
  end

  test "destroying a Student booking in class" do
    visit student_booking_in_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student booking in class was successfully destroyed"
  end
end
