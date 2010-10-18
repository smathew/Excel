# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101014130834) do

  create_table "atmdebitcardapps", :force => true do |t|
    t.string   "name"
    t.string   "account_number"
    t.string   "ssn"
    t.string   "date_of_birth"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "email_address"
    t.string   "employer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ccdisclosures", :force => true do |t|
    t.string   "agree_to_terms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helocagrees", :force => true do |t|
    t.string   "read_brochure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helocapps", :force => true do |t|
    t.string   "loan_type"
    t.string   "amount_requested"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_ssn"
    t.string   "applicant_date_of_birth"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.integer  "applicant_zip"
    t.string   "applicant_home_phone"
    t.string   "applicant_work_phone"
    t.string   "applicant_cell_phone"
    t.string   "applicant_time_at_residence"
    t.string   "applicant_monthly_payment"
    t.string   "applicant_ownership"
    t.string   "applicant_employer"
    t.string   "applicant_position"
    t.string   "applicant_length_of_employment"
    t.string   "applicant_employer_phone"
    t.string   "applicant_employer_address"
    t.string   "applicant_employer_city"
    t.string   "applicant_employer_state"
    t.integer  "applicant_employer_zip"
    t.string   "applicant_gross_salary"
    t.string   "applicant_salary_frequency"
    t.string   "applicant_other_income"
    t.string   "applicant_source_of_other_income"
    t.string   "coapplicant_name"
    t.string   "coapplicant_account_number"
    t.string   "coapplicant_ssn"
    t.string   "coapplicant_date_of_birth"
    t.string   "coapplicant_address"
    t.string   "coapplicant_city"
    t.string   "coapplicant_state"
    t.integer  "coapplicant_zip"
    t.string   "coapplicant_home_phone"
    t.string   "coapplicant_time_at_residence"
    t.string   "coapplicant_monthly_payment"
    t.string   "coapplicant_ownership"
    t.string   "coapplicant_employer"
    t.string   "coapplicant_position"
    t.string   "coapplicant_length_of_employment"
    t.string   "coapplicant_employer_phone"
    t.string   "coapplicant_employer_address"
    t.string   "coapplicant_employer_city"
    t.string   "coapplicant_employer_state"
    t.integer  "coapplicant_employer_zip"
    t.string   "coapplicant_gross_salary"
    t.string   "coapplicant_salary_frequency"
    t.string   "coapplicant_other_income"
    t.string   "coapplicant_source_of_other_income"
    t.string   "mortgage_type"
    t.string   "value_of_home"
    t.string   "annual_property_tax"
    t.string   "annual_home_insurance"
    t.string   "name_of_creditor1"
    t.string   "current_balance1"
    t.string   "monthly_payment1"
    t.string   "name_of_creditor2"
    t.string   "current_balance2"
    t.string   "monthly_payment2"
    t.string   "name_of_creditor3"
    t.string   "current_balance3"
    t.string   "monthly_payment3"
    t.string   "name_of_creditor4"
    t.string   "current_balance4"
    t.string   "monthly_payment4"
    t.string   "name_of_creditor5"
    t.string   "current_balance5"
    t.string   "monthly_payment5"
    t.string   "name_of_creditor6"
    t.string   "current_balance6"
    t.string   "monthly_payment6"
    t.string   "name_of_creditor7"
    t.string   "current_balance7"
    t.string   "monthly_payment7"
    t.string   "name_of_creditor8"
    t.string   "current_balance8"
    t.string   "monthly_payment8"
    t.string   "comments"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loanapps", :force => true do |t|
    t.string   "loan_type"
    t.string   "amount_requested"
    t.string   "loan_term"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_ssn"
    t.string   "applicant_date_of_birth"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.integer  "applicant_zip"
    t.string   "applicant_home_phone"
    t.string   "applicant_work_phone"
    t.string   "applicant_cell_phone"
    t.string   "applicant_time_at_residence"
    t.string   "applicant_monthly_payment"
    t.string   "applicant_ownership"
    t.string   "applicant_employer"
    t.string   "applicant_position"
    t.string   "applicant_length_of_employment"
    t.string   "applicant_employer_phone"
    t.string   "applicant_employer_address"
    t.string   "applicant_employer_city"
    t.string   "applicant_employer_state"
    t.integer  "applicant_employer_zip"
    t.string   "applicant_gross_salary"
    t.string   "applicant_salary_frequency"
    t.string   "applicant_other_income"
    t.string   "applicant_source_of_other_income"
    t.string   "coapplicant_name"
    t.string   "coapplicant_account_number"
    t.string   "coapplicant_ssn"
    t.string   "coapplicant_date_of_birth"
    t.string   "coapplicant_address"
    t.string   "coapplicant_city"
    t.string   "coapplicant_state"
    t.integer  "coapplicant_zip"
    t.string   "coapplicant_home_phone"
    t.string   "coapplicant_time_at_residence"
    t.string   "coapplicant_monthly_payment"
    t.string   "coapplicant_ownership"
    t.string   "coapplicant_employer"
    t.string   "coapplicant_position"
    t.string   "coapplicant_length_of_employment"
    t.string   "coapplicant_employer_phone"
    t.string   "coapplicant_employer_address"
    t.string   "coapplicant_employer_city"
    t.string   "coapplicant_employer_state"
    t.integer  "coapplicant_employer_zip"
    t.string   "coapplicant_gross_salary"
    t.string   "coapplicant_salary_frequency"
    t.string   "coapplicant_other_income"
    t.string   "coapplicant_source_of_other_income"
    t.string   "name_of_creditor1"
    t.string   "current_balance1"
    t.string   "monthly_payment1"
    t.string   "name_of_creditor2"
    t.string   "current_balance2"
    t.string   "monthly_payment2"
    t.string   "name_of_creditor3"
    t.string   "current_balance3"
    t.string   "monthly_payment3"
    t.string   "name_of_creditor4"
    t.string   "current_balance4"
    t.string   "monthly_payment4"
    t.string   "name_of_creditor5"
    t.string   "current_balance5"
    t.string   "monthly_payment5"
    t.string   "name_of_creditor6"
    t.string   "current_balance6"
    t.string   "monthly_payment6"
    t.string   "name_of_creditor7"
    t.string   "current_balance7"
    t.string   "monthly_payment7"
    t.string   "name_of_creditor8"
    t.string   "current_balance8"
    t.string   "monthly_payment8"
    t.string   "special_delivery"
    t.string   "type_of_special_delivery"
    t.string   "daytime_delivery_address1"
    t.string   "daytime_delivery_address2"
    t.string   "daytime_delivery_city"
    t.string   "daytime_delivery_state"
    t.integer  "daytime_delivery_zip"
    t.string   "daytime_delivery_phone"
    t.string   "branch_to_be_delivered"
    t.string   "comments"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "membershipagrees", :force => true do |t|
    t.string   "agree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pinrequests", :force => true do |t|
    t.string   "name"
    t.string   "account_number"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "reason_for_request"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reges", :force => true do |t|
    t.string   "authorize_pay_overdrafts"
    t.string   "not_linked_savings_account"
    t.string   "linked_to_savings_account"
    t.string   "name"
    t.string   "account_number"
    t.string   "email_address"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secmoragrees", :force => true do |t|
    t.string   "accept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secmorapps", :force => true do |t|
    t.string   "loan_type"
    t.string   "amount_requested"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_ssn"
    t.string   "applicant_date_of_birth"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.integer  "applicant_zip"
    t.string   "applicant_home_phone"
    t.string   "applicant_work_phone"
    t.string   "applicant_cell_phone"
    t.string   "applicant_time_at_residence"
    t.string   "applicant_monthly_payment"
    t.string   "applicant_ownership"
    t.string   "applicant_employer"
    t.string   "applicant_position"
    t.string   "applicant_length_of_employment"
    t.string   "applicant_employer_phone"
    t.string   "applicant_employer_address"
    t.string   "applicant_employer_city"
    t.string   "applicant_employer_state"
    t.integer  "applicant_employer_zip"
    t.string   "applicant_gross_salary"
    t.string   "applicant_salary_frequency"
    t.string   "applicant_other_income"
    t.string   "applicant_source_of_other_income"
    t.string   "coapplicant_name"
    t.string   "coapplicant_account_number"
    t.string   "coapplicant_ssn"
    t.string   "coapplicant_date_of_birth"
    t.string   "coapplicant_address"
    t.string   "coapplicant_city"
    t.string   "coapplicant_state"
    t.integer  "coapplicant_zip"
    t.string   "coapplicant_home_phone"
    t.string   "coapplicant_time_at_residence"
    t.string   "coapplicant_monthly_payment"
    t.string   "coapplicant_ownership"
    t.string   "coapplicant_employer"
    t.string   "coapplicant_position"
    t.string   "coapplicant_length_of_employment"
    t.string   "coapplicant_employer_phone"
    t.string   "coapplicant_employer_address"
    t.string   "coapplicant_employer_city"
    t.string   "coapplicant_employer_state"
    t.integer  "coapplicant_employer_zip"
    t.string   "coapplicant_gross_salary"
    t.string   "coapplicant_salary_frequency"
    t.string   "coapplicant_other_income"
    t.string   "coapplicant_source_of_other_income"
    t.string   "mortgage_type"
    t.string   "estimated_value_of_home"
    t.string   "annual_property_tax_amount"
    t.string   "annual_homeowners_insurance"
    t.string   "name_of_creditor1"
    t.string   "current_balance1"
    t.string   "monthly_payment1"
    t.string   "name_of_creditor2"
    t.string   "current_balance2"
    t.string   "monthly_payment2"
    t.string   "name_of_creditor3"
    t.string   "current_balance3"
    t.string   "monthly_payment3"
    t.string   "name_of_creditor4"
    t.string   "current_balance4"
    t.string   "monthly_payment4"
    t.string   "name_of_creditor5"
    t.string   "current_balance5"
    t.string   "monthly_payment5"
    t.string   "name_of_creditor6"
    t.string   "current_balance6"
    t.string   "monthly_payment6"
    t.string   "name_of_creditor7"
    t.string   "current_balance7"
    t.string   "monthly_payment7"
    t.string   "name_of_creditor8"
    t.string   "current_balance8"
    t.string   "monthly_payment8"
    t.string   "comments"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shareapps", :force => true do |t|
    t.string   "account_type"
    t.string   "name"
    t.string   "account_number"
    t.string   "ssn"
    t.string   "date_of_birth"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "email_address"
    t.string   "certificate_amount"
    t.string   "term_length"
    t.string   "transfer_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visaapps", :force => true do |t|
    t.string   "visa_type"
    t.string   "amount_requested"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_ssn"
    t.string   "applicant_date_of_birth"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.integer  "applicant_zip"
    t.string   "applicant_home_phone"
    t.string   "applicant_time_at_residence"
    t.string   "applicant_monthly_payment"
    t.string   "applicant_ownership"
    t.string   "applicant_employer"
    t.string   "applicant_position"
    t.string   "applicant_length_of_employment"
    t.string   "applicant_employer_phone"
    t.string   "applicant_employer_address"
    t.string   "applicant_employer_city"
    t.string   "applicant_employer_state"
    t.integer  "applicant_employer_zip"
    t.string   "applicant_gross_salary"
    t.string   "applicant_salary_frequency"
    t.string   "applicant_other_income"
    t.string   "applicant_source_of_other_income"
    t.string   "coapplicant_name"
    t.string   "coapplicant_account_number"
    t.string   "coapplicant_ssn"
    t.string   "coapplicant_date_of_birth"
    t.string   "coapplicant_address"
    t.string   "coapplicant_city"
    t.string   "coapplicant_state"
    t.integer  "coapplicant_zip"
    t.string   "coapplicant_home_phone"
    t.string   "coapplicant_time_at_residence"
    t.string   "coapplicant_monthly_payment"
    t.string   "coapplicant_ownership"
    t.string   "coapplicant_employer"
    t.string   "coapplicant_position"
    t.string   "coapplicant_length_of_employment"
    t.string   "coapplicant_employer_phone"
    t.string   "coapplicant_employer_address"
    t.string   "coapplicant_employer_city"
    t.string   "coapplicant_employer_state"
    t.integer  "coapplicant_employer_zip"
    t.string   "coapplicant_gross_salary"
    t.string   "coapplicant_salary_frequency"
    t.string   "coapplicant_other_income"
    t.string   "coapplicant_source_of_other_income"
    t.string   "name_of_creditor1"
    t.string   "current_balance1"
    t.string   "monthly_payment1"
    t.string   "name_of_creditor2"
    t.string   "current_balance2"
    t.string   "monthly_payment2"
    t.string   "name_of_creditor3"
    t.string   "current_balance3"
    t.string   "monthly_payment3"
    t.string   "name_of_creditor4"
    t.string   "current_balance4"
    t.string   "monthly_payment4"
    t.string   "name_of_creditor5"
    t.string   "current_balance5"
    t.string   "monthly_payment5"
    t.string   "name_of_creditor6"
    t.string   "current_balance6"
    t.string   "monthly_payment6"
    t.string   "name_of_creditor7"
    t.string   "current_balance7"
    t.string   "monthly_payment7"
    t.string   "name_of_creditor8"
    t.string   "current_balance8"
    t.string   "monthly_payment8"
    t.string   "comments"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end