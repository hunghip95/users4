class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  private
    def logged_in_user
      if !logged_in?
        store_location
        render 'sessions/new'
      end
    end
    def get
      @b=User.find(1)
      @a=@b.cmts.all
    end
end
