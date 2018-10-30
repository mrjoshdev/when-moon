class PriceGoalsController < ApplicationController
before_action :authenticate_user!

def new
  @price_goal = Price_goal.new
end

end
