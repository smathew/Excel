# == Schema Information
# Schema version: 20101013134725
#
# Table name: loanapps
#
#  id                                 :integer         not null, primary key
#  loan_type                          :string(255)
#  amount_requested                   :string(255)
#  loan_term                          :string(255)
#  applicant_name                     :string(255)
#  applicant_account_number           :string(255)
#  applicant_ssn                      :string(255)
#  applicant_date_of_birth            :string(255)
#  applicant_address                  :string(255)
#  applicant_city                     :string(255)
#  applicant_state                    :string(255)
#  applicant_zip                      :integer
#  applicant_home_phone               :string(255)
#  applicant_work_phone               :string(255)
#  applicant_cell_phone               :string(255)
#  applicant_time_at_residence        :string(255)
#  applicant_monthly_payment          :string(255)
#  applicant_ownership                :string(255)
#  applicant_employer                 :string(255)
#  applicant_position                 :string(255)
#  applicant_length_of_employment     :string(255)
#  applicant_employer_phone           :string(255)
#  applicant_employer_address         :string(255)
#  applicant_employer_city            :string(255)
#  applicant_employer_state           :string(255)
#  applicant_employer_zip             :integer
#  applicant_gross_salary             :string(255)
#  applicant_salary_frequency         :string(255)
#  applicant_other_income             :string(255)
#  applicant_source_of_other_income   :string(255)
#  coapplicant_name                   :string(255)
#  coapplicant_account_number         :string(255)
#  coapplicant_ssn                    :string(255)
#  coapplicant_date_of_birth          :string(255)
#  coapplicant_address                :string(255)
#  coapplicant_city                   :string(255)
#  coapplicant_state                  :string(255)
#  coapplicant_zip                    :integer
#  coapplicant_home_phone             :string(255)
#  coapplicant_time_at_residence      :string(255)
#  coapplicant_monthly_payment        :string(255)
#  coapplicant_ownership              :string(255)
#  coapplicant_employer               :string(255)
#  coapplicant_position               :string(255)
#  coapplicant_length_of_employment   :string(255)
#  coapplicant_employer_phone         :string(255)
#  coapplicant_employer_address       :string(255)
#  coapplicant_employer_city          :string(255)
#  coapplicant_employer_state         :string(255)
#  coapplicant_employer_zip           :integer
#  coapplicant_gross_salary           :string(255)
#  coapplicant_salary_frequency       :string(255)
#  coapplicant_other_income           :string(255)
#  coapplicant_source_of_other_income :string(255)
#  name_of_creditor1                  :string(255)
#  current_balance1                   :string(255)
#  monthly_payment1                   :string(255)
#  name_of_creditor2                  :string(255)
#  current_balance2                   :string(255)
#  monthly_payment2                   :string(255)
#  name_of_creditor3                  :string(255)
#  current_balance3                   :string(255)
#  monthly_payment3                   :string(255)
#  name_of_creditor4                  :string(255)
#  current_balance4                   :string(255)
#  monthly_payment4                   :string(255)
#  name_of_creditor5                  :string(255)
#  current_balance5                   :string(255)
#  monthly_payment5                   :string(255)
#  name_of_creditor6                  :string(255)
#  current_balance6                   :string(255)
#  monthly_payment6                   :string(255)
#  name_of_creditor7                  :string(255)
#  current_balance7                   :string(255)
#  monthly_payment7                   :string(255)
#  name_of_creditor8                  :string(255)
#  current_balance8                   :string(255)
#  monthly_payment8                   :string(255)
#  special_delivery                   :string(255)
#  type_of_special_delivery           :string(255)
#  daytime_delivery_address1          :string(255)
#  daytime_delivery_address2          :string(255)
#  daytime_delivery_city              :string(255)
#  daytime_delivery_state             :string(255)
#  daytime_delivery_zip               :integer
#  daytime_delivery_phone             :string(255)
#  branch_to_be_delivered             :string(255)
#  comments                           :string(255)
#  email_address                      :string(255)
#  created_at                         :datetime
#  updated_at                         :datetime
#

class Loanapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :loan_type, :amount_requested, :loan_term, :applicant_name, :applicant_account_number, :applicant_address, :applicant_city, :applicant_state, :applicant_zip, :applicant_time_at_residence, :applicant_monthly_payment, :applicant_home_phone, :email_address, :applicant_ssn, :applicant_date_of_birth, :applicant_employer, :applicant_position

	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :applicant_ssn, :with => SSNformat, :if => "!applicant_ssn.blank?"
	validates_format_of :coapplicant_ssn, :with => SSNformat, :if => "!coapplicant_ssn.blank?"	
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :applicant_home_phone, :with => Phoneformat, :if => "!applicant_home_phone.blank?"
	validates_format_of :applicant_work_phone, :with => Phoneformat, :if => "!applicant_work_phone.blank?"
	validates_format_of :applicant_cell_phone, :with => Phoneformat, :if => "!applicant_cell_phone.blank?"
	validates_format_of :applicant_employer_phone, :with => Phoneformat, :if => "!applicant_employer_phone.blank?"
	validates_format_of :coapplicant_home_phone, :with => Phoneformat, :if => "!coapplicant_home_phone.blank?"
	validates_format_of :coapplicant_employer_phone, :with => Phoneformat, :if => "!coapplicant_employer_phone.blank?"
	validates_format_of :daytime_delivery_phone, :with => Phoneformat, :if => "!daytime_delivery_phone.blank?"	
	
	#other validations
	validates_presence_of :special_delivery, :message => "Please select the type of delivery required for the disbursement check" 
	
	validates_presence_of :coapplicant_address, :coapplicant_city, :coapplicant_state, :coapplicant_zip, :coapplicant_home_phone, :coapplicant_ssn, :coapplicant_date_of_birth, :if => "!coapplicant_name.blank?"
	
	validates_presence_of :type_of_special_delivery, :daytime_delivery_address1, :daytime_delivery_city, :daytime_delivery_state, :daytime_delivery_zip,:daytime_delivery_phone,  :if => :request_specialdelivery?
	def request_specialdelivery?
		special_delivery == "Special Delivery"
	end
	
	validates_presence_of :branch_to_be_delivered, :if => :request_branch?
	def request_branch?
		special_delivery == "In Person at Branch Location"
	end
	
	validates_length_of :comments, :maximum=> 254, :message => " cannot be more than 250 characters", :if => "!comments.blank?"
end
