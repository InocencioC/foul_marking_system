class CreateStudentInClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :student_in_classes do |t|
      t.integer :id_student
      t.string :fullname
      t.integer :age
      t.integer :id_class_year

      t.timestamps
    end
  end
end
