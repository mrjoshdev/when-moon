class PricesController < ApplicationController
before_action :authenticate_user!

def new
  @price = Price.new
end

end
