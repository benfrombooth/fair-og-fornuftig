class Bookmark < ApplicationRecord
  belongs_to(:politician, { :required => true, :class_name => "Politician", :foreign_key => "politician_id" })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
