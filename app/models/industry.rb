# == Schema Information
#
# Table name: industries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Industry < ApplicationRecord
  has_many(:users, { :class_name => "User", :foreign_key => "industry_id", :dependent => :destroy })

  has_many(:causes, { :class_name => "Cause", :foreign_key => "industry_id", :dependent => :destroy })
end
