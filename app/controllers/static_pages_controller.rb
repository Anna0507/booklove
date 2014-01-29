class StaticPagesController < ApplicationController
  
  def Home
    @legends = Legend.paginate(page: params[:page], per_page: 9)
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

  def user_email
  end

end
