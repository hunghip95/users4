class PhoneController < ApplicationController
  
  before_action :get_product_id
  
  def index
    @product = Product.find(params[:product_id])
    @phones = @product.phones.all
  end
  
  def new
   
  end
  
  def edit
    @phone = Phone.find(params[:id])
  end
  
  def show   
    @phone = Phone.find(params[:id])
  end
  
  def create
    @phone = @product.phones.create(phone)
    redirect_to product_phone_path(@product,@phone)
  end
  
  def update
    @phone = Phone.find(params[:id])
    @phone.update(phone)
    redirect_to product_phone_path(@product,@phone)
  end
  
  def destroy
    @phone = Phone.find(params[:id])
    @phone.delete
    redirect_to product_path
  end
  private
    def phone
      params.require(:phone).permit(:name,:num)
    end
    
    def get_product_id
      @product = Product.find(params[:product_id])
    end
end
