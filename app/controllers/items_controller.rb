class ItemsController < ApplicationController
  before_action :logged_in_user
  def show
    
  end
  def new
    
  end
  def create
    @content=item
    render 'show'
  end
  private
    def item
      params.require[:item].permit[:name]
    end
end
