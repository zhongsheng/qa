module Qa
  class Theme < ApplicationRecord
    has_many :tasks
    belongs_to :user, class_name: 'User'
    delegate :name, to: :user, prefix: true
    validates :name, presence: true

    def all_done_tasks
      Task.where(theme_id: self.id, status: :done).order(updated_at: 'DESC')
    end
    def all_todo_tasks
      Task.where(theme_id: self.id, status: :todo).order(updated_at: 'DESC')
    end
  end
end
