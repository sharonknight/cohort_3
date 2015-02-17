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
    Recipe.create({:title => params[:title], :ingredient_list => params[:ingredient_list], :instructions => params[:instructions]})
    flash[:purple] = "Recipe added."
    # flash == {:success => "Recipe added."}
    redirect_to '/recipes'
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update({:title => params[:title], :ingredient_list => params[:ingredient_list], :instructions => params[:instructions]})
    flash[:success] = "Recipe updated."
    redirect_to '/recipes'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
end
