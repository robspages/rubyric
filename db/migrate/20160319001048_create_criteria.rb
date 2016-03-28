class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :text
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
