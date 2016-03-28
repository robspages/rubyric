class AddAssignmentIdToCriterium < ActiveRecord::Migration
  def change
  	add_column :criteria, :assignment_id, :integer
  end
end
