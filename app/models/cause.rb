class Cause < ApplicationRecord
  belongs_to(:politician, { :class_name => "Politician", :foreign_key => "politician_id" })

  belongs_to(:industry, { :class_name => "Industry", :foreign_key => "industry_id" })

  has_one(:user, { :through => :industry, :source => :users })

  has_one(:policy, { :through => :politician, :source => :policies })
end
