class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :id_class
      t.string :phonenum

      t.timestamps
    end
  end
end
