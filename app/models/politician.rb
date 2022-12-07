# == Schema Information
#
# Table name: politicians
#
#  id           :integer          not null, primary key
#  name         :string
#  party        :string
#  password     :string
#  photo        :string
#  spokesperson :string
#  username     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  district_id  :integer
#  status_id    :integer
#
class Politician < ApplicationRecord
end
