class PhoneController < ApplicationController
  
  before_action :admin?,only: [:edit,:update,:destroy,:new]
  before_action :get_product_id,only: [:create,:index]
  
  def index
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
    redirect_to phone_path(@phone)
  end
  
  def destroy
    @phone = Phone.find(params[:id])
    @phone.delete
    redirect_to manageall_path
  end
  
  private
    def phone
      params.require(:phone).permit(:name,:price,:image)
    end
    
    def get_product_id
      @product = Product.find(params[:product_id])
    end
end
