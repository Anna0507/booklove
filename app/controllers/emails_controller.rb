class EmailsController < ApplicationController
  def create
  	@email = Email.new(email_params)
  	if @email.save 
  		flash[:success] = "Your email has been sent. Thank you for your input. We'll take care of it ASAP."
  		UserMailer.user_input(@email).deliver 
      # Call the mailer, call the relevant method. Then call deliver. 
      redirect_to root_path
  	else 
  	  	flash[:error] = "FAILure."
  		redirect_to root_path
  	end	
  end


  private

  def email_params 
  	params.require(:email).permit(:email)
  end 	
end
