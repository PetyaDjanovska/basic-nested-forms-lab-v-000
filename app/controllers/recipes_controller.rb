class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'milk')
    @recipe.ingredients.build(name: 'eggs')
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to people_path
  end

  def recipe_params
    params.require(:recipe).permit(
    :title,
    ingredients_attributes: [
      :quantity,
      :name
    ]
    )
    
  end
end
