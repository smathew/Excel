class CreateSecmorapps < ActiveRecord::Migration
  def self.up
    create_table :secmorapps do |t|
      t.string :loan_type
      t.string :amount_requested
      t.string :applicant_name
      t.string :applicant_account_number
      t.string :applicant_ssn
      t.string :applicant_date_of_birth
      t.string :applicant_address
      t.string :applicant_city
      t.string :applicant_state
      t.integer :applicant_zip
      t.string :applicant_home_phone
      t.string :applicant_work_phone
      t.string :applicant_cell_phone
      t.string :applicant_time_at_residence
      t.string :applicant_monthly_payment
      t.string :applicant_ownership
      t.string :applicant_employer
      t.string :applicant_position
      t.string :applicant_length_of_employment
      t.string :applicant_employer_phone
      t.string :applicant_employer_address
      t.string :applicant_employer_city
      t.string :applicant_employer_state
      t.integer :applicant_employer_zip
      t.string :applicant_gross_salary
      t.string :applicant_salary_frequency
      t.string :applicant_other_income
      t.string :applicant_source_of_other_income
      t.string :coapplicant_name
      t.string :coapplicant_account_number
      t.string :coapplicant_ssn
      t.string :coapplicant_date_of_birth
      t.string :coapplicant_address
      t.string :coapplicant_city
      t.string :coapplicant_state
      t.integer :coapplicant_zip
      t.string :coapplicant_home_phone
      t.string :coapplicant_time_at_residence
      t.string :coapplicant_monthly_payment
      t.string :coapplicant_ownership
      t.string :coapplicant_employer
      t.string :coapplicant_position
      t.string :coapplicant_length_of_employment
      t.string :coapplicant_employer_phone
      t.string :coapplicant_employer_address
      t.string :coapplicant_employer_city
      t.string :coapplicant_employer_state
      t.integer :coapplicant_employer_zip
      t.string :coapplicant_gross_salary
      t.string :coapplicant_salary_frequency
      t.string :coapplicant_other_income
      t.string :coapplicant_source_of_other_income
      t.string :mortgage_type
      t.string :estimated_value_of_home
      t.string :annual_property_tax_amount
      t.string :annual_homeowners_insurance
      t.string :name_of_creditor1
      t.string :current_balance1
      t.string :monthly_payment1
      t.string :name_of_creditor2
      t.string :current_balance2
      t.string :monthly_payment2
      t.string :name_of_creditor3
      t.string :current_balance3
      t.string :monthly_payment3
      t.string :name_of_creditor4
      t.string :current_balance4
      t.string :monthly_payment4
      t.string :name_of_creditor5
      t.string :current_balance5
      t.string :monthly_payment5
      t.string :name_of_creditor6
      t.string :current_balance6
      t.string :monthly_payment6
      t.string :name_of_creditor7
      t.string :current_balance7
      t.string :monthly_payment7
      t.string :name_of_creditor8
      t.string :current_balance8
      t.string :monthly_payment8
      t.string :comments
      t.string :email_address

      t.timestamps
    end
  end

  def self.down
    drop_table :secmorapps
  end
end
