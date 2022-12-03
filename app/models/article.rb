# == Schema Information
#
# Table name: articles
#
#  id               :integer          not null, primary key
#  outlet           :string
#  publication_date :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  journalist_id    :integer
#  politician_id    :integer
#  user_id          :integer
#
class Article < ApplicationRecord
end
