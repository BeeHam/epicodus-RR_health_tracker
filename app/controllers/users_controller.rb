class UsersController < ApplicationController

  def show
    @user = current_user
    @foods = @user.foods.all
    @exercises = @user.exercises.all
  end



end
