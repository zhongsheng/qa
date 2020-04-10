module Qa
  class Theme < ApplicationRecord
    has_many :tasks
    validates :name, presence: true
  end
end
