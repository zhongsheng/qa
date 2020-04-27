module Qa
  class Task < ApplicationRecord
    belongs_to :theme
    has_many :talks
    belongs_to :user, class_name: 'User'
    delegate :name, to: :user, prefix: true
    validates :name, presence: true

    enum status: {
      todo: 0,
      done: 1,
      archived: 2
    }


    def talk_contents
      talks.map { |talk|
        "<div class='qa-talk-wrap'>" + \
        talk.content_modifier + \
          "<div class='qa-talk-user'><h5>#{talk.user_name}</h5><span>#{talk.created_at.to_s(:short)}</span></div></div>".html_safe
      }.join.html_safe
    end

    def css_class(current_task)
      names = []
      if current_task == self
        names << 'qa-current-task'
      end
      names << "qa-status-#{self.status}"
      names.join(' ')
    end

  end
end
