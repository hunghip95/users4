class CmtsController < ApplicationController
  before_action :logged_in_user
  def show
    
  end
  def new
    
  end
  def create
    @content=contents
    @current_user.cmts.create(content: contents)
    render 'show'
  end
  private
    def contents
      params[:cmt][:content]
    end
end
