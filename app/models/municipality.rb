# == Schema Information
#
# Table name: municipalities
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  district_id :integer
#
class Municipality < ApplicationRecord
  belongs_to(:district, { :required => true, :class_name => "District", :foreign_key => "district_id" })

  has_many(:users, { :class_name => "User", :foreign_key => "municipality_id", :dependent => :destroy })
end
