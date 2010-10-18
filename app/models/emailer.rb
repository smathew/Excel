class Emailer < ActionMailer::Base
  def pwdrequest_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Password Request"
	
	body :app => app
  end
  
  def shareapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online Share Account Application"
	
	body :app => app
  end
  
  def atmdebitcardapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online ATM/Debit Card Application"
	
	body :app => app
  end
  
  def helocapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online HELOC Application"
	
	body :app => app
  end
  
  def loanapp_email(app)
	recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online Loan Application"
	body :app => app
  end
  
  def secmorapp_email(app)
	recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online Fixed Rate Second Mortgage Application"
	body :app => app
  end
  
  def rege_email(app)
	recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Overdraft Opt-In/Out from www.excelfcu.org"
	
	body :app => app
  end
  
  def visaapp_email(app)
	recipients  "smathew@shareone.com"
	#recipients  "info@excelfcu.org"
	from        "web_services@shareone.com"
	subject     "Online Visa Card Application"
	
	body :app => app
  end
end
