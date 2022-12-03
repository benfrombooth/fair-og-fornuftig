# == Schema Information
#
# Table name: anonymity_levels
#
#  id               :integer          not null, primary key
#  permission_media :string
#  permission_name  :string
#  permission_photo :string
#  permission_story :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class AnonymityLevel < ApplicationRecord
end
