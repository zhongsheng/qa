require "webpacker/helper"

module Qa
  module ApplicationHelper
    include ::Webpacker::Helper

    def test_tag
      binding.pry
      'Hello World'
    end

    def current_webpacker_instance
      Qa.webpacker
    end
  end
end
