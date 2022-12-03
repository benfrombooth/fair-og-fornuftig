# == Schema Information
#
# Table name: volunteer_teams
#
#  id           :integer          not null, primary key
#  team_name    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  team_lead_id :integer
#
class VolunteerTeam < ApplicationRecord
end
