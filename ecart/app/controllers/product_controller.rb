class ProductController < ApplicationController
  def index
  	@products = Product.all
  end
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to @product, notice: "Product saved sucessfully"
  	else
  		render 'new'
  	end
  end
  def show
  @product =Product.find(params[:id])
  end

  private
  def product_params
  	params.require(:product).permit(:title, :spec,:image,:price)
  end
end
