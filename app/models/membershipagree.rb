# == Schema Information
# Schema version: 20101001184618
#
# Table name: membershipagrees
#
#  id         :integer         not null, primary key
#  agree      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Membershipagree < ActiveRecord::Base
	validate :is_checked

  def is_checked
    errors.add(:base, "You need to agree to proceed") unless agree == 'yes'
  end
end
