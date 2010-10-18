# == Schema Information
# Schema version: 20101005143505
#
# Table name: shareapps
#
#  id                 :integer         not null, primary key
#  account_type       :string(255)
#  name               :string(255)
#  account_number     :string(255)
#  ssn                :string(255)
#  date_of_birth      :string(255)
#  address            :string(255)
#  city               :string(255)
#  state              :string(255)
#  zip                :integer
#  home_phone         :string(255)
#  work_phone         :string(255)
#  email_address      :string(255)
#  certificate_amount :string(255)
#  term_length        :string(255)
#  transfer_from      :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class Shareapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :name, :address, :city, :state, :zip, :home_phone, :email_address, :ssn, :date_of_birth
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :ssn, :with => SSNformat, :if => "!ssn.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :work_phone, :with => Phoneformat, :if => "!work_phone.blank?"
	
	#other validations
	validates_presence_of :certificate_amount, :term_length, :transfer_from,  :if => :request_moreinfo?
	def request_moreinfo?
		account_type == "Term Savings Certificate"
	end
end
