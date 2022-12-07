# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name       :string
#  last_name        :string
#  nationality      :string
#  password         :string
#  permission_media :string
#  permission_name  :string
#  permission_photo :string
#  permission_story :string
#  personal_story   :string
#  photo            :string
#  username         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  industry_id      :integer
#  municipality_id  :integer
#  residency_id     :integer
#
class User < ApplicationRecord
  has_many(:examples, { :class_name => "Example", :foreign_key => "user_id", :dependent => :destroy })

  belongs_to(:municipality, { :class_name => "Municipality", :foreign_key => "municipality_id" })

  belongs_to(:industry, { :class_name => "Industry", :foreign_key => "industry_id" })

  has_one(:cause, { :through => :industry, :source => :causes })
end
