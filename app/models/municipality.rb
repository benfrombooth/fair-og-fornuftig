class Municipality < ApplicationRecord
  belongs_to(:district, { :class_name => "District", :foreign_key => "district_id" })

  has_many(:users, { :class_name => "User", :foreign_key => "municipality_id", :dependent => :destroy })
end
