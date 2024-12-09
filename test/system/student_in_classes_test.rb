require "application_system_test_case"

class StudentInClassesTest < ApplicationSystemTestCase
  setup do
    @student_in_class = student_in_classes(:one)
  end

  test "visiting the index" do
    visit student_in_classes_url
    assert_selector "h1", text: "Student In Classes"
  end

  test "creating a Student in class" do
    visit student_in_classes_url
    click_on "New Student In Class"

    fill_in "Age", with: @student_in_class.age
    fill_in "Fullname", with: @student_in_class.fullname
    fill_in "Id class year", with: @student_in_class.id_class_year
    fill_in "Id student", with: @student_in_class.id_student
    click_on "Create Student in class"

    assert_text "Student in class was successfully created"
    click_on "Back"
  end

  test "updating a Student in class" do
    visit student_in_classes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @student_in_class.age
    fill_in "Fullname", with: @student_in_class.fullname
    fill_in "Id class year", with: @student_in_class.id_class_year
    fill_in "Id student", with: @student_in_class.id_student
    click_on "Update Student in class"

    assert_text "Student in class was successfully updated"
    click_on "Back"
  end

  test "destroying a Student in class" do
    visit student_in_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student in class was successfully destroyed"
  end
end
