# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class District < ApplicationRecord
  has_many(:politicians, { :class_name => "Politician", :foreign_key => "district_id", :dependent => :destroy })

  has_many(:municipalities, { :class_name => "Municipality", :foreign_key => "district_id", :dependent => :destroy })

  has_many(:users, { :through => :municipalities, :source => :users })
end
