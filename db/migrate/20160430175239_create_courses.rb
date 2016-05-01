class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

      t.timestamps null: false
      t.string :name
      t.string :description
      t.integer :status

    end
  end
end
