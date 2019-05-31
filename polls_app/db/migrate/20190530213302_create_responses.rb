class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :question_id, null: false
      t.integer :answerchoice_id, null: false
      t.timestamps
    end
    add_index :responses, :question_id
    add_index :responses, :answerchoice_id
  end
end
