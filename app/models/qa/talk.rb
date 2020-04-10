module Qa
  class Talk < ApplicationRecord
    belongs_to :task
    has_rich_text :content

    def content_modifier
      self.content.to_s.gsub('/qa/rails/active_', '/rails/active_').html_safe
    end

  end
end
