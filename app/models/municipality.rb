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
end
