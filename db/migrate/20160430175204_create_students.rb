class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.timestamps null: false
      t.string :name
      t.string :register_number
      t.integer :status
    end
  end
end
