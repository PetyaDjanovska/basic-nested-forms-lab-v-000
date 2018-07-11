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
    binding.pry
  end
end
