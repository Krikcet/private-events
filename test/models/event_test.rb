# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#  location   :string
#  creator_id :integer
#  title      :string
#
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
