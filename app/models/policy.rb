# == Schema Information
#
# Table name: policies
#
#  id           :integer          not null, primary key
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  injustice_id :integer
#
class Policy < ApplicationRecord
  belongs_to(:injustice, { :class_name => "Injustice", :foreign_key => "injustice_id" })

  has_many(:examples, { :class_name => "Example", :foreign_key => "policy_id", :dependent => :destroy })

  has_many(:stances, { :class_name => "Stance", :foreign_key => "policy_id", :dependent => :destroy })

  has_many(:politicians, { :through => :stances, :source => :politician })

  has_one(:value, { :through => :injustice, :source => :value })

  has_many(:causes, { :through => :politicians, :source => :causes })
end
