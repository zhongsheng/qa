require "webpacker/helper"
module Qa
  module ThemesHelper
    include ::Webpacker::Helper
    def current_webpacker_instance
      Qa.webpacker
    end
    def ttest
      'hi'
    end
  end
end
