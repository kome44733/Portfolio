class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.integer :customer_id
      t.integer :answer_id
      t.integer :question_id
      t.text :reply
      t.timestamps
    end
  end
end
