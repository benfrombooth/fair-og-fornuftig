# == Schema Information
#
# Table name: stances
#
#  id              :integer          not null, primary key
#  sentiment_score :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  policy_id       :integer
#  politician_id   :integer
#
class Stance < ApplicationRecord
  belongs_to(:politician, { :required => true, :class_name => "Politician", :foreign_key => "politician_id" })

  belongs_to(:policy, { :required => true, :class_name => "Policy", :foreign_key => "policy_id" })

  has_one(:value, { :through => :policy, :source => :value })
end
