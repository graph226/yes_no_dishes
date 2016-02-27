class CreateQuestionTables < ActiveRecord::Migration
  def change
    create_table :question_tables do |t|
      t.boolean :yes_no
      t.timestamps :null
    end
  end
end
