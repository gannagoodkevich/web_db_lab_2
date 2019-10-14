class BossesController < ApplicationController
  def index
    @bosses = Boss.all
  end

  def show
    @boss = Boss.find(params[:id])
  end

  def new
    @boss = Boss.new
  end

  def edit
    @boss = Boss.find(params[:id])
  end

  def create
    @boss = Boss.new(params.require(:boss).permit(:enterprise_name, :full_name, :job))
    if @boss.save
      redirect_to @boss
    else
      render 'new'
    end
  end

  def update
    @boss = Boss.find(params[:id])

    if @boss.update(params.require(:boss).permit(:enterprise_name, :full_name, :job))
      redirect_to @boss
    else
      render 'edit'
    end
  end

  def destroy
    @boss = Boss.find(params[:id])
    @boss.destroy

    redirect_to bosss_path
  end
end
