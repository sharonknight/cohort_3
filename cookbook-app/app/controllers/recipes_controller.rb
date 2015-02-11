class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
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
end
