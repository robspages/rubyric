class AddGradeValueToRaitings < ActiveRecord::Migration
  def change
  	add_column :raitings, :grade_value, :decimal
  end
end
