module Qa
  class ApplicationController < ::AuthBaseController
    protect_from_forgery with: :exception

  end
end
