# == Schema Information
#
# Table name: statuses
#
#  id          :integer          not null, primary key
#  person_type :string
#  remark      :boolean
#  status_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Status < ApplicationRecord
end
