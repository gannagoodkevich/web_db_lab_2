class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(params.require(:list).permit(:name_prodact, :name_enterprise, :price))
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(params.require(:list).permit(:name_prodact, :name_enterprise, :price))
      redirect_to @list
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end
end
