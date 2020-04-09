class CreateQaCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_categories do |t|
      t.string :name
      t.integer :status, default: 0
      t.integer :user_ids, array: true

      t.timestamps
    end
  end
end
