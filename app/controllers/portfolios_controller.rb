class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    redirect_to @portfolio
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :address)
  end
end
