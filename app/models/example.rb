# == Schema Information
#
# Table name: examples
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer
#  policy_id  :integer
#  user_id    :integer
#
class Example < ApplicationRecord
  # belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  # belongs_to(:policy, { :required => true, :class_name => "Policy", :foreign_key => "policy_id" })
end
