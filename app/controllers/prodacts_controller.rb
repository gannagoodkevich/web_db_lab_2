class ProdactsController < ApplicationController
  def index
    @prodacts = Prodact.all
  end

  def show
    @prodact = Prodact.find(params[:id])
  end

  def new
    @prodact = Prodact.new
  end

  def edit
    @prodact = Prodact.find(params[:id])
  end

  def create
    @prodact = Prodact.new(params.require(:prodact).permit(:name, :number, :group))
    if @prodact.save
      redirect_to @prodact
    else
      render 'new'
    end
  end

  def update
    @prodact = Prodact.find(params[:id])

    if @prodact.update(params.require(:prodact).permit(:name, :number, :group))
      redirect_to @prodact
    else
      render 'edit'
    end
  end
end
