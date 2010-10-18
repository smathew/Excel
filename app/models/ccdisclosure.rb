# == Schema Information
# Schema version: 20101004202620
#
# Table name: ccdisclosures
#
#  id             :integer         not null, primary key
#  agree_to_terms :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Ccdisclosure < ActiveRecord::Base
	validate :is_checked

  def is_checked
    errors.add(:base, "You need to agree to proceed") unless agree_to_terms == 'yes'
  end
end
