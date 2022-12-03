# == Schema Information
#
# Table name: identifications
#
#  id                  :integer          not null, primary key
#  identification_type :string
#  person_type         :string
#  remark              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Identification < ApplicationRecord
end
