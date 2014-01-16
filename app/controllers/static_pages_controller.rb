class StaticPagesController < ApplicationController
  
  def Home
    @legends = Legend.all 
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
