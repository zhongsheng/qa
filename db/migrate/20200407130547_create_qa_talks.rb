class CreateQaTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_talks do |t|
      t.text :content
      t.integer :user_id
      t.integer :task_id, null: false

      t.timestamps
    end
  end
end
