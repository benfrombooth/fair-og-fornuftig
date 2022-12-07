# == Schema Information
#
# Table name: injustices
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  value_id    :integer
#
class Injustice < ApplicationRecord
  has_many(:policies, { :class_name => "Policy", :foreign_key => "injustice_id", :dependent => :destroy })

  belongs_to(:value, { :class_name => "Value", :foreign_key => "value_id" })
end
