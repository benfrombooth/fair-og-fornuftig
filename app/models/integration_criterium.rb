# == Schema Information
#
# Table name: integration_criteria
#
#  id                             :integer          not null, primary key
#  deposit_requirement            :boolean
#  education_requirement          :boolean
#  housing_requirement            :boolean
#  language_dane_requirement      :boolean
#  language_foreigner_requirement :string
#  pr_requirement                 :boolean
#  visit_requirement              :boolean
#  work_dane_requirement          :boolean
#  work_foreigner_requirement     :boolean
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  user_id                        :integer
#
class IntegrationCriterium < ApplicationRecord
end
