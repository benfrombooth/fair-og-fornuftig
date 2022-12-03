# == Schema Information
#
# Table name: journalists
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  outlet     :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Journalist < ApplicationRecord
end
