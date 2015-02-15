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
    # Recipe.create({:title => "Raw Eggs", :ingredient_list => "Chicken", :instructions => "Squeeze chicken"})
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update({:title => params[:title], :ingredient_list => params[:ingredient_list], :instructions => params[:instructions]})
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
end
