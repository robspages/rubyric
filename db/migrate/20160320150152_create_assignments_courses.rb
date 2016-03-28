class CreateAssignmentsCourses < ActiveRecord::Migration
  def change
    create_table :assignments_courses do |t|
      t.references :assignment, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
