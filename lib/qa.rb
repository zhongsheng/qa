require "qa/engine"
require "active_storage/engine"

module Qa
  mattr_accessor :main_app_path
  Qa.main_app_path ||= '/'
  ROOT_PATH = Pathname.new(File.join(__dir__, ".."))

  class << self
    def webpacker
      @webpacker ||= ::Webpacker::Instance.new(
        root_path: ROOT_PATH,
        config_path: ROOT_PATH.join("config/webpacker.yml")
      )
    end
  end
end
