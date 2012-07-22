class StaticPagesController < ApplicationController

TWI_ML = 
<<-TWILIO_ML
<?xml version='1.0' encoding='utf-8' ?>
<Response>
	<Pause length="15"/>
	<Hangup/>
</Response>
TWILIO_ML

  def home
    @upcoming_schedules = current_user.upcoming_schedules if signed_in?
  end

  def help
  end

  def about
  end
  
  def twilio
    render text: TWI_ML
  end
end
