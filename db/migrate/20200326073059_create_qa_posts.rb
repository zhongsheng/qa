class CreateQaPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_posts do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
