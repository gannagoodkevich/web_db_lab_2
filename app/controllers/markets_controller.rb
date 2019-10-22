class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
  end

  def new
    @market = Market.new
  end

  def edit
    @market = Market.find(params[:id])
  end

  def create
    @market = Market.new(params.require(:market).permit(:enterprise_id, :name_mark, :phone, :name_cont))
    if @market.save
      redirect_to @market
    else
      render 'new'
    end
  end

  def update
    @market = Market.find(params[:id])

    if @market.update(params.require(:market).permit(:enterprise_id, :name_mark, :phone, :name_cont))
      redirect_to @market
    else
      render 'edit'
    end
  end

  def destroy
    @market = Market.find(params[:id])
    @market.destroy

    redirect_to markets_path
  end
end
