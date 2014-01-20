class UserMailer < ActionMailer::Base
  default :from => "seikowsky@googlemail.com"

  def user_input(email)
  	@email = email 
  	mail(:to => "seikowsky@googlemail.com", :subject => "Input form User")
  end 

end
