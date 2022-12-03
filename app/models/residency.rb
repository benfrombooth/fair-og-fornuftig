# == Schema Information
#
# Table name: residencies
#
#  id               :integer          not null, primary key
#  residency_status :string
#  residency_type   :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Residency < ApplicationRecord
end
