class Api::V1::ProductsController < ApplicationController 
  def index 
    render json: Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: product
    else
      render json: {
        errors: @product.errors
      }, status: 500
    end
  end

  def show
    render json: Product.find(params[:id])
  end

  private 

    def product_params 
      params.require(:product).permit(:name, :brand)
    end
end