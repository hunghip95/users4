class SearchController < ApplicationController
  
  def index
    
  end
  
  def create
    @result = Phone.where(['name LIKE ?', "%#{get}%" ])
    render :index
  end
  
  private
    def get
      params[:keyword]
    end
  
end
