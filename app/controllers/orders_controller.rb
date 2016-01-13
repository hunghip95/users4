class OrdersController < ApplicationController
  before_action :get_phone_id, only: [:create,:new]
  
  def index
    @order = current_user.orders.all
    @orders = Order.all
  end
  
  def new
  end
  
  def show
  end
  
  def update    
  end
  
  def create
    if logged_in?
      @order = @phone.orders.where(user_id: current_user)
      @order = @order.create(get)
      @order.update(namephone: @phone.name)
      render :show
    else
       
    end
  end
  
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to user_orders_path(current_user)
  end
  
  private
  
    def get_phone_id
      @phone = Phone.find(params[:phone_id])
    end
    
    def get
      params.require(:order).permit(:namecustomer,:phonenumber,:address,:num)
    end
end
