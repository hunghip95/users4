class SearchController < ApplicationController
  
  def index
    
  end
  
  def create
    @a = Phone.search do
      fulltext get
    end
    @result = @a.results
    render :index
  end
  
  private
    def get
      params[:keyword]
    end
  
end
