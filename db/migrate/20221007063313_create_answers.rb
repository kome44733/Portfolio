class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :answer
      t.integer :question_id
      t.integer :customer_id
      t.integer :profession_id

      t.timestamps
    end
  end
end
