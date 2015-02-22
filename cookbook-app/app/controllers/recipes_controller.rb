class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    if params[:sort] == "title"
      @recipes = Recipe.order(:title)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
  end

  def create
    recipe = Recipe.create({:title => params[:title], :ingredient_list => params[:ingredient_list], :instructions => params[:instructions], :user_id => current_user.id })
    flash[:success] = "Recipe added."

    redirect_to "/recipes/" + recipe.id.to_s
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update({:title => params[:title], :ingredient_list => params[:ingredient_list], :instructions => params[:instructions]})
    flash[:success] = "Recipe updated."
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
end
