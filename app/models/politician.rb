# == Schema Information
#
# Table name: politicians
#
#  id                    :integer          not null, primary key
#  name                  :string
#  party                 :string
#  photo                 :string
#  priority              :string
#  spokesperson          :string
#  total_sentiment_score :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  district_id           :integer
#  status_id             :integer
#
class Politician < ApplicationRecord
  has_many(:stances, { :class_name => "Stance", :foreign_key => "politician_id", :dependent => :destroy })

  has_many(:causes, { :class_name => "Cause", :foreign_key => "politician_id", :dependent => :destroy })

  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "politician_id", :dependent => :destroy })

  belongs_to(:district, { :required => true, :class_name => "District", :foreign_key => "district_id" })

  has_many(:policies, { :through => :stances, :source => :policy })

  has_many(:values, { :through => :stances, :source => :value })
end
