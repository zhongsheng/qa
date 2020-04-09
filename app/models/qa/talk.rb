module Qa
  class Talk < ApplicationRecord
    belongs_to :task
    has_rich_text :content
  end
end
