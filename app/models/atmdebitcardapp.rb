# == Schema Information
# Schema version: 20101005155557
#
# Table name: atmdebitcardapps
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  account_number :string(255)
#  ssn            :string(255)
#  date_of_birth  :string(255)
#  address        :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip            :integer
#  home_phone     :string(255)
#  work_phone     :string(255)
#  cell_phone     :string(255)
#  email_address  :string(255)
#  employer       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Atmdebitcardapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :name, :account_number, :ssn, :date_of_birth, :address, :city, :state, :zip, :email_address, :home_phone, :employer
	
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
	validates_format_of :cell_phone, :with => Phoneformat, :if => "!cell_phone.blank?"
	
	#validating to see if zip has got only integer values
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :zip, :with => zipformat, :if => "!zip.blank?"
end
