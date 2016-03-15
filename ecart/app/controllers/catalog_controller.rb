class CatalogController < ApplicationController
  def new
  	
  end
  def create
  	@product = Product.new
  end

  private
  def catalog_params
  end
end
