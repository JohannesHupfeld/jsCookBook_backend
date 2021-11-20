class Api::V1::RecipesController < ApplicationController

  def index
    recipes = Recipe.all
      # no need for insance variables since we are not rendering to an erb but redirecting with fetch requests
    render json: RecipeSerializer.new(recipes)
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, status: :accepted 
    else
      render json: {errors: recipe.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, :image_url, :category_id)
  end

end
