class StocksController < ApplicationController
  def search
    @tracked_stocks = current_user.stocks
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash[:alert] = "That ain't a stock symbol"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "You gotta be looking for something right?"
      redirect_to my_portfolio_path
    end
  end
end
