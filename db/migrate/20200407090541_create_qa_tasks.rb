class CreateQaTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_tasks do |t|
      t.string :name
      t.date :deadline
      t.integer :tag_ids, array: true
      t.integer :user_id
      t.references :theme, null: false

      t.timestamps
    end
  end
end
