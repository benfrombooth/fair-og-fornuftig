# == Schema Information
#
# Table name: politicians
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  party        :string
#  year_elected :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  district_id  :integer
#  status_id    :integer
#
class Politician < ApplicationRecord
end
