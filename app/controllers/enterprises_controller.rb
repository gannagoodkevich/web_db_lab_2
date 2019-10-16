class EnterprisesController < ApplicationController

  def index
    @enterprises = Enterprise.all
  end

  def show
    @enterprise = Enterprise.find(params[:id])
    @lists = List.all
  end

  def new
    @enterprise = Enterprise.new
  end

  def edit
    @enterprise = Enterprise.find(params[:id])
  end

  def create
    @enterprise = Enterprise.new(params.require(:enterprise).permit(:name_ent, :code, :address, :phone))
    if @enterprise.save
      redirect_to @enterprise
    else
      render 'new'
    end
  end

  def update
    @enterprise = Enterprise.find(params[:id])

    if @enterprise.update(params.require(:enterprise).permit(:name_ent, :code, :address, :phone))
      redirect_to @enterprise
    else
      render 'edit'
    end
  end

  def destroy
    @enterprise = Enterprise.find(params[:id])
    @enterprise.destroy

    redirect_to enterprises_path
  end
end
