class PhonesController < ApplicationController
  def index
      
  end
  def new
     @a=createphone
  end
  def create
   
  end
  private
    def phone
      params.require(:phone).permit(:name,:num)
    end
end
