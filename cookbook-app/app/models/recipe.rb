class Recipe < ActiveRecord::Base
  belongs_to :user
  
  def array_of_ingredients
    return ingredient_list.split(",")
  end

  def array_of_instructions
    return instructions.split(",")
  end

  def friendly_created_at
    return created_at.strftime("%b %d, %Y")
  end



end
