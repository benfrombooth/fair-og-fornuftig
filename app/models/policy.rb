# == Schema Information
#
# Table name: policies
#
#  id             :integer          not null, primary key
#  description    :string
#  high_sentiment :string
#  low_sentiment  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Policy < ApplicationRecord
end
