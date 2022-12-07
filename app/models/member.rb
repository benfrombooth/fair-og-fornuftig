# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Member < ApplicationRecord
  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :presence => true
  has_secure_password
end
