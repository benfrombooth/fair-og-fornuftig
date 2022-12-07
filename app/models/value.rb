class Value < ApplicationRecord
  has_many(:injustices, { :class_name => "Injustice", :foreign_key => "value_id", :dependent => :destroy })

  has_many(:policies, { :through => :injustices, :source => :policies })
  
  has_many(:politicians, { :through => :stances, :source => :politician })

  has_many(:stances, { :through => :policies, :source => :stances })
end
