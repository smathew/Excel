# == Schema Information
# Schema version: 20101013175955
#
# Table name: reges
#
#  id                         :integer         not null, primary key
#  authorize_pay_overdrafts   :string(255)
#  not_linked_savings_account :string(255)
#  linked_to_savings_account  :string(255)
#  name                       :string(255)
#  account_number             :string(255)
#  email_address              :string(255)
#  phone_number               :string(255)
#  created_at                 :datetime
#  updated_at                 :datetime
#

class Rege < ActiveRecord::Base
	validates_presence_of :authorize_pay_overdrafts, :name, :account_number
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :phone_number, :with => Phoneformat, :if => "!phone_number.blank?"
end
