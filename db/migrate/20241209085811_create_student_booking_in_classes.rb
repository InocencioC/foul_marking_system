class CreateStudentBookingInClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :student_booking_in_classes do |t|
      t.integer :id_user
      t.integer :id_student_in_class
      t.integer :class_shift

      t.timestamps
    end
  end
end
