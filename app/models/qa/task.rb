module Qa
  class Task < ApplicationRecord
    # belongs_to :qa_theme
    has_many :talks

    def talk_contents
      talks.map { |talk| talk.content_modifier }.join.html_safe
    end

  end
end
