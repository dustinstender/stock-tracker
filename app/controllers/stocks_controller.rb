class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js { render partial: 'users/result' }
        end
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
