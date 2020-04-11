module Qa
  class Theme < ApplicationRecord
    has_many :tasks
    belongs_to :user, class_name: 'User'
    delegate :name, to: :user, prefix: true
    validates :name, presence: true

    def all_done_tasks
      Task.where(theme_id: self.id, status: :done)
    end
    def all_todo_tasks
      Task.where(theme_id: self.id, status: :todo)
    end
  end
end
