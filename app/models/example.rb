# == Schema Information
#
# Table name: examples
#
#  id         :integer          not null, primary key
#  remark     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  policy_id  :integer
#  user_id    :integer
#  value_id   :integer
#
class Example < ApplicationRecord
end
