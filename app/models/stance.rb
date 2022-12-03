# == Schema Information
#
# Table name: stances
#
#  id              :integer          not null, primary key
#  sentiment_score :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  policy_id       :integer
#  politician_id   :integer
#
class Stance < ApplicationRecord
end
