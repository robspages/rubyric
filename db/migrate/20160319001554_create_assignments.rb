class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.decimal :total_points

      t.timestamps null: false
    end
  end
end
