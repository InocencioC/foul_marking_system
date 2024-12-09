require "application_system_test_case"

class ClassCollegesTest < ApplicationSystemTestCase
  setup do
    @class_college = class_colleges(:one)
  end

  test "visiting the index" do
    visit class_colleges_url
    assert_selector "h1", text: "Class Colleges"
  end

  test "creating a Class college" do
    visit class_colleges_url
    click_on "New Class College"

    fill_in "Class shift", with: @class_college.class_shift
    fill_in "Id schedule", with: @class_college.id_schedule
    fill_in "Id student in class", with: @class_college.id_student_in_class
    fill_in "Id subject", with: @class_college.id_subject
    fill_in "Id user", with: @class_college.id_user
    fill_in "Max number students", with: @class_college.max_number_students
    fill_in "Year", with: @class_college.year
    click_on "Create Class college"

    assert_text "Class college was successfully created"
    click_on "Back"
  end

  test "updating a Class college" do
    visit class_colleges_url
    click_on "Edit", match: :first

    fill_in "Class shift", with: @class_college.class_shift
    fill_in "Id schedule", with: @class_college.id_schedule
    fill_in "Id student in class", with: @class_college.id_student_in_class
    fill_in "Id subject", with: @class_college.id_subject
    fill_in "Id user", with: @class_college.id_user
    fill_in "Max number students", with: @class_college.max_number_students
    fill_in "Year", with: @class_college.year
    click_on "Update Class college"

    assert_text "Class college was successfully updated"
    click_on "Back"
  end

  test "destroying a Class college" do
    visit class_colleges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class college was successfully destroyed"
  end
end
