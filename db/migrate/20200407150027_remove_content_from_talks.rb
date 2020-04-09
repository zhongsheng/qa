class RemoveContentFromTalks < ActiveRecord::Migration[6.0]
  def change
    remove_column :qa_talks, :content, :text
  end
end
