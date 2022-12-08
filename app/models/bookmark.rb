class Bookmark < ApplicationRecord
  belongs_to(:politician, { :required => true, :class_name => "Politician", :foreign_key => "politician_id" })
  
  belongs_to(:member, { :required => true, :class_name => "Member", :foreign_key => "member_id" })
end
