module Qa
  class Task < ApplicationRecord
    # belongs_to :qa_theme
    has_many :talks

    validates :name, presence: true

    def talk_contents
      talks.map { |talk| talk.content_modifier }.join.html_safe
    end

  end
end
