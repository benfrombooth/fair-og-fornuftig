# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name       :string
#  last_name        :string
#  nationality      :string
#  password         :string
#  permission_media :boolean
#  permission_name  :boolean
#  permission_photo :boolean
#  permission_story :boolean
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

  belongs_to(:anonymity, { :required => true, :class_name => "AnonymityLevel", :foreign_key => "anonymity_id" })

  belongs_to(:municipality, { :required => true, :class_name => "Municipality", :foreign_key => "municipality_id" })

  belongs_to(:industry, { :required => true, :class_name => "Industry", :foreign_key => "industry_id" })

  has_one(:district, { :through => :municipality, :source => :district })

  has_one(:cause, { :through => :industry, :source => :causes })
end
