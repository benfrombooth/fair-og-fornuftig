# == Schema Information
#
# Table name: users
#
#  id                         :integer          not null, primary key
#  arrival_year               :date
#  email                      :string
#  first_name                 :string
#  integration_result         :boolean
#  integration_survey         :boolean
#  last_name                  :string
#  nationality                :string
#  permanent_residency_result :boolean
#  permanent_residency_survey :string
#  personal_story             :string
#  phone                      :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  anonymity_id               :integer
#  identification_id          :integer
#  industry_id                :integer
#  municipality_id            :integer
#  residency_id               :integer
#  status_id                  :integer
#  volunteer_team_id          :integer
#
class User < ApplicationRecord
end
