class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fullname
      t.integer :age
      t.integer :id_class_year
      t.integer :class_shift

      t.timestamps
    end
  end
end
