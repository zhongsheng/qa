module Qa
  class Theme < ApplicationRecord
    has_many :tasks
  end
end
