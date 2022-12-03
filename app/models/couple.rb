# == Schema Information
#
# Table name: couples
#
#  id              :integer          not null, primary key
#  city            :string
#  points          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  danish_user_id  :integer
#  foreign_user_id :integer
#
class Couple < ApplicationRecord
end
