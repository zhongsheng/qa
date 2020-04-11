module Qa
  class Talk < ApplicationRecord
    belongs_to :user, class_name: 'User'
    belongs_to :task
    has_rich_text :content

    delegate :name, to: :user, prefix: true

    def content_modifier
      self.content.to_s.gsub('/qa/rails/active_', '/rails/active_').html_safe
    end

  end
end
