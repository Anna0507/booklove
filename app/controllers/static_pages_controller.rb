class StaticPagesController < ApplicationController
  
  def Home
    @legends = Legend.paginate(page: params[:page], per_page: 12)
    @email = Email.new
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
