# == Schema Information
#
# Table name: causes
#
#  id            :integer          not null, primary key
#  priority      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  industry_id   :integer
#  politician_id :integer
#
class Cause < ApplicationRecord
  belongs_to(:politician, { :class_name => "Politician", :foreign_key => "politician_id" })

  belongs_to(:industry, { :class_name => "Industry", :foreign_key => "industry_id" })

  has_one(:user, { :through => :industry, :source => :users })

  has_one(:policy, { :through => :politician, :source => :policies })
end
