class CryptocurrenciesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  def index
    require 'net/http'
    require 'json'

    @cryptocurrencies = Cryptocurrency.all
    @url = 'https://api.coinmarketcap.com/v2/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    if current_user
      @user_cryptocurrencies = current_user.cryptocurrencies
    end
  end

  def new
    @cryptocurrency = Cryptocurrency.new
  end

  def create
    @cryptocurrency = Cryptocurrency.new(cryptocurrency_params)
    @cryptocurrency.user = current_user
    if @cryptocurrency.save
      flash[:notice] = "Cryptocurrency was successfully created"
      redirect_to root_path
    else
      render new_cryptocurrency_path
    end
  end

  def edit
    @cryptocurrency = Cryptocurrency.find(params[:id])
    @user = User.find(@cryptocurrency.user_id)
  end

  def update
    @cryptocurrency = Cryptocurrency.find(params[:id])
    if @cryptocurrency.update_attributes(cryptocurrency_params)
      redirect_to "/users/#{@cryptocurrency.user_id}", notice: "Cryptocurrency was edited successfully"
    else
      render :edit
    end
  end

  def destroy
    user_id = Cryptocurrency.find(params[:id]).user_id
    Cryptocurrency.destroy(params[:id])
    redirect_to "/users/#{user_id}", notice: "Cryptocurrency was deleted successfully"
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

  private

  def cryptocurrency_params
    params.require(:cryptocurrency).permit(:name,:symbol)
  end
end
