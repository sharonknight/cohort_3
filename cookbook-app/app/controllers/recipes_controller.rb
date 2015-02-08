class RecipesController < ApplicationController
  def home
    @recipe = Recipe.first
  end
end
