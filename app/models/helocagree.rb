# == Schema Information
# Schema version: 20101004202620
#
# Table name: helocagrees
#
#  id            :integer         not null, primary key
#  read_brochure :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Helocagree < ActiveRecord::Base
	validate :is_checked

  def is_checked
    errors.add(:base, "You need to agree to have read the brochure before proceeding") unless read_brochure == 'yes'
  end
end
