class PagesController < ApplicationController

  def form
  end

  def submit
    @message = params[:message]
  end













  def get_params
    @message = params[:message]
    @second_message = params[:message2]
  end

  def slug
    @message = params[:message]
  end

  def game
    winning_number = 26
    @users_guess = params[:guess].to_i

    if @users_guess == 0
      @message = "Your input was invalid"
    elsif @users_guess > winning_number
      @message = "Guess lower"
    elsif @users_guess < winning_number
      @message = "Guess higher"
    else
      @message = "You've won!"
    end
  end

  def game2
    winning_number = 26
    @users_guess = params[:guess].to_i

    if @users_guess == 0
      @message = "Your input was invalid"
    elsif @users_guess > winning_number
      @message = "Guess lower"
    elsif @users_guess < winning_number
      @message = "Guess higher"
    else
      @message = "You've won!"
    end

  end
end
