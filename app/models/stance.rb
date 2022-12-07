class Stance < ApplicationRecord
  belongs_to(:politician, { :class_name => "Politician", :foreign_key => "politician_id" })

  belongs_to(:policy, { :class_name => "Policy", :foreign_key => "policy_id" })

  has_one(:value, { :through => :policy, :source => :value })rails generate draft:resource value name:string description:string photo:string
end
