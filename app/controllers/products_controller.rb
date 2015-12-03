class ProductsController < ApplicationController
  
  before_action :admin?,only: [:edit,:new,:destroy,:update]
  
  def new    
  end
  
  def index
    @products = Product.all
  end
    
  def show
    @product = Product.find(params[:id]) 
    @phones = @product.phones.all
  end  
  
  def create
    @product = Product.create(product)
    redirect_to @product
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path
  end
  
  def update
    @product = Product.find(params[:id])
    @product.update(product)
    redirect_to @product
  end
    
  private
    def product
      params.require(:product).permit(:name)
    end
end
