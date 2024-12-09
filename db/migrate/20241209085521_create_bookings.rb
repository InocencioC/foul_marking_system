class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :id_student_in_class
      t.integer :id_class
      t.datetime :foul_day
      t.integer :mark_student_in_class

      t.timestamps
    end
  end
end
