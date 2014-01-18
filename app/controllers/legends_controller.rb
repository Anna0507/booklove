class LegendsController < ApplicationController

  def index
    @legends = Legend.all 
  end

  def show
    @legend = Legend.find(params[:id])
    @books = @legend.books 
    @legends = Legend.all 
  end

  def new
    @legend = Legend.new 
  end

  def create
    @legend = Legend.new(legend_params)
    if @legend.save 
      flash[:success] = "A new legend has been successfully introduced."
      redirect_to root_path 
    else 
      flash[:error] = "Epic Fail"
      redirect_to root_path
    end 
  end

  def edit
    @legend = Legend.find(params[:id])
  end

  def update
    @legend = Legend.find(params[:id])
    @legend.update(legend_params)
    redirect_to root_path
  end

  def destroy
    @legend = Legend.find(params[:id])
    @legend.destroy 
    redirect_to root_path
  end

end


  private 

  def legend_params
    params.require(:legend).permit(:name, :description, :image)
  end 