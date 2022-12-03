# == Schema Information
#
# Table name: injustices
#
#  id             :integer          not null, primary key
#  description    :string
#  injustice_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  policy_id      :integer
#  value_id       :integer
#
class Injustice < ApplicationRecord
end
