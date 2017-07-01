class Api::V1::IngredientsController < ApplicationController 
  def index
    render json: Ingredient.includes(:products), include: ['products']
  end
end