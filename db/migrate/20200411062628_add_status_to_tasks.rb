class AddStatusToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :qa_tasks, :status, :integer, default: 0
  end
end
