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
    recipe = Reciple.create(recipe_params)
    redirect_to recipe_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, 
    ingredients_attributes: [
      :name,
      :quantity
      ]
    )
  end
end
