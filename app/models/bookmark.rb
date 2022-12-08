# == Schema Information
#
# Table name: bookmarks
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  politician_id :integer
#  user_id       :integer
#
class Bookmark < ApplicationRecord
  belongs_to(:politician, { :required => true, :class_name => "Politician", :foreign_key => "politician_id" })
  
  belongs_to(:member, { :required => true, :class_name => "Member", :foreign_key => "member_id" })
end
