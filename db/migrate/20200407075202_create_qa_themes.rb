class CreateQaThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_themes do |t|
      t.string :name
      t.integer :user_id
      t.integer :user_ids, array: true

      t.timestamps
    end
  end
end
