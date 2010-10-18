# == Schema Information
# Schema version: 20101005190237
#
# Table name: helocapps
#
#  id                                 :integer         not null, primary key
#  loan_type                          :string(255)
#  amount_requested                   :string(255)
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
#  mortgage_type                      :string(255)
#  value_of_home                      :string(255)
#  annual_property_tax                :string(255)
#  annual_home_insurance              :string(255)
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
#  comments                           :string(255)
#  email_address                      :string(255)
#  created_at                         :datetime
#  updated_at                         :datetime
#

class Helocapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :amount_requested, :applicant_name, :applicant_account_number, :applicant_ssn, :applicant_date_of_birth, :applicant_address, :applicant_city, :applicant_state, :applicant_zip, :email_address, :applicant_home_phone, :applicant_employer, :applicant_position, :applicant_length_of_employment
	
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
		
	#validating to see if zip has got only integer values
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :applicant_zip, :with => zipformat, :if => "!applicant_zip.blank?"
	validates_format_of :applicant_employer_zip, :with => zipformat, :if => "!applicant_employer_zip.blank?"
	validates_format_of :coapplicant_zip, :with => zipformat, :if => "!coapplicant_zip.blank?"
	validates_format_of :coapplicant_employer_zip, :with => zipformat, :if => "!coapplicant_employer_zip.blank?"
	
	#other validations
	validates_presence_of :coapplicant_account_number, :coapplicant_ssn, :coapplicant_date_of_birth, :coapplicant_address, :coapplicant_city, :coapplicant_state, :coapplicant_zip, :coapplicant_home_phone, :coapplicant_employer, :coapplicant_position, :coapplicant_length_of_employment, :if => "!coapplicant_name.blank?"
end
