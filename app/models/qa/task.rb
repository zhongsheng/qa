module Qa
  class Task < ApplicationRecord
    # belongs_to :qa_theme
    has_many :talks
  end
end
