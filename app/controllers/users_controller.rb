class UsersController < ApplicationController

  def show
    @user = current_user
    @food = @user.foods.all
    @exercise = @user.exercises.all
  end



end
