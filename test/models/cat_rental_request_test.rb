# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :datetime         not null
#  end_date   :datetime         not null
#  status     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class CatRentalRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
