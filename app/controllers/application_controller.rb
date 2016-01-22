class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :products
  protect_from_forgery with: :exception
  include SessionsHelper
  private
    def logged_in_user
      if !logged_in?
        store_location
        render 'sessions/new'
      end
    end
    def admin?
      if !current_user.admin?
        redirect_to 'welcome/home'
      end
    end
    def products
      @products = Product.all
    end
    def phones
      @phones = Phone.all
    end
end
