class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|

      t.timestamps null: false
      t.belongs_to :course, index:true
      t.belongs_to :student, index:true

    end
  end
end
