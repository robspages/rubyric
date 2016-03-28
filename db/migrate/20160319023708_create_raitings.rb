class CreateRaitings < ActiveRecord::Migration
  def change
    create_table :raitings do |t|
      t.references :criterium, index: true, foreign_key: true
      t.string :text
      t.integer :position

      t.timestamps null: false
    end
  end
end
