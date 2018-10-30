class PriceGoalsController < ApplicationController
before_action :authenticate_user!

def new
  @price_goal = PriceGoal.new
end

def create
  @price_goal = PriceGoal.new(cryptocurrency_params)
  @price_goal.user = current_user
  if @price_goal.save
    flash[:notice] = "PriceGoal was successfully created"
    redirect_to root_path
  else
    render new_cryptocurrency_path
  end
end

def edit
  @price_goal = PriceGoal.find(params[:id])
  @user = User.find(@price_goal.user_id)
end

def update
  @price_goal = PriceGoal.find(params[:id])
  if @price_goal.update_attributes(cryptocurrency_params)
    redirect_to "/users/#{@price_goal.user_id}", notice: "Price goal was edited successfully"
  else
    render :edit
  end
end

def destroy
  user_id = PriceGoal.find(params[:id]).user_id
  PriceGoal.destroy(params[:id])
  redirect_to "/users/#{user_id}", notice: "Price goal was deleted successfully"
end

end
