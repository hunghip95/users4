class BasketsController < ApplicationController
  before_action :get_phone_id, only: [:create,:new]
  
  def index
    @basket = current_user.baskets.all   
  end
  
  def new
  end
  
  def show
    @basket = current_user.baskets.all   
  end
  
  def create
    
    if @phone.baskets.find_by(user_id: current_user.id)
      @basket = @phone.baskets.find_by(user_id: current_user.id)
      @num = get_num.to_i + @basket.num
      @price = @basket.price / @basket.num * @num
      @basket = @phone.baskets.find_by(user_id: current_user.id)
      @basket.update(num: @num,price: @price)
      
      redirect_to phone_basket_path(@phone,@basket)
  
    else
      @basket = @phone.baskets.where(user_id: current_user.id)
      @basket.create(name: @phone.name,num: get_num,price: @phone.price*get_num.to_f)
      redirect_to phone_basket_path(@phone,@basket)
    end
  end
  
  def edit
  end
  
  def update
    @a = get_num_edit["num"]
    @basket = Basket.find(params[:id])
    @b = @basket.price / @basket.num*@a.to_f
    @basket.update(num: @a,price: @b)
    redirect_to user_baskets_path(current_user)
  end
  
  def destroy
    @basket = Basket.find(params[:id])
    @basket.delete
    redirect_to user_baskets_path(current_user)
  end
  private  
    def get_num
      params[:num]
    end
    
    def get_phone_id
      @phone = Phone.find(params[:phone_id])
    end
    
    def get_num_edit
      params.require(:basket).permit(:num,:price)
    end
end
