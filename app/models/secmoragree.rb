# == Schema Information
# Schema version: 20101013134725
#
# Table name: secmoragrees
#
#  id         :integer         not null, primary key
#  accept     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Secmoragree < ActiveRecord::Base
	validate :is_ticked

  def is_ticked
    errors.add(:base, "You need to agree to have read the brochure before proceeding") unless accept == 'yes'
  end
end
