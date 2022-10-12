class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :post
      t.integer :customer_id
      t.integer :profession_id
      t.boolean :is_resolution,   null: false, default: "false"

      t.timestamps
    end
  end
end
