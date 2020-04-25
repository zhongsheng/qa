module Qa
  class ApplicationController < Qa.main_controller
    protect_from_forgery with: :exception
    before_action :set_current_user

    private
    def set_current_user
      @current_user = current_user
    end

  end
end
