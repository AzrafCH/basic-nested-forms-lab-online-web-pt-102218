class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'name')
    @recipe.ingredients.build(ingredient_type: 'quantity')
  end

  def create
  end
end
