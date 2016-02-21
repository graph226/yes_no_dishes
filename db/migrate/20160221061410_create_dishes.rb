class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :question_table_id
      t.timestamps null: false
    end
  end
end
