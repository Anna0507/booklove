class StaticPagesController < ApplicationController
  
  def Home
    @legends = Legend.paginate(page: params[:page], per_page: 12)
  end

  def About
  end

  def How
  end

  def Contact
  end

  def Privacy
  end

  def Terms
  end

end
