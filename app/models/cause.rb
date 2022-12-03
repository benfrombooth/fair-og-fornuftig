# == Schema Information
#
# Table name: causes
#
#  id            :integer          not null, primary key
#  name          :boolean
#  quote         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  industry_id   :integer
#  politician_id :integer
#
class Cause < ApplicationRecord
end
