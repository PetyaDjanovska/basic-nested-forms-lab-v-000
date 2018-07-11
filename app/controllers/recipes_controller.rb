class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(title: 'cake')
    @recipe.ingredients.build(title: 'omlette')
  end

  def create
  end
end
