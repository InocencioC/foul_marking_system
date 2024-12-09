class CreateClassColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :class_colleges do |t|
      t.integer :id_user
      t.integer :id_schedule
      t.integer :id_student_in_class
      t.date :year
      t.integer :class_shift
      t.integer :max_number_students
      t.integer :id_subject

      t.timestamps
    end
  end
end
