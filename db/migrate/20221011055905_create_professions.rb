class CreateProfessions < ActiveRecord::Migration[6.1]
  def change
    create_table :professions do |t|
      t.integer:profession, default: 0, null: false
      t.timestamps
    end
  end
end
