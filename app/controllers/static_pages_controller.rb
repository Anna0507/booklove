class StaticPagesController < ApplicationController
  
  def Home
    @legends = Legend.order('random()').page(params[:page]).per_page(30)
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

  def user_email
    @email = Email.new
  end

end
