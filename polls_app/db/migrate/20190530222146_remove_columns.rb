class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :question_id
    add_column :answer_choices, :question_id, :integer, null: false
  end
end
