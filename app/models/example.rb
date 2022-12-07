class Example < ApplicationRecord
  belongs_to(:user, { :class_name => "User", :foreign_key => "user_id" })

  belongs_to(:policy, { :class_name => "Policy", :foreign_key => "policy_id" })
end
