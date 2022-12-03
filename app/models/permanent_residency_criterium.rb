# == Schema Information
#
# Table name: permanent_residency_criteria
#
#  id                             :integer          not null, primary key
#  active_citizenship_requirement :string
#  inicome_requirement            :boolean
#  language_requirement           :boolean
#  work_requirement               :boolean
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  user_id                        :integer
#
class PermanentResidencyCriterium < ApplicationRecord
end
