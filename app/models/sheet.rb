class Sheet < ActiveRecord::Base
  has_many :columns
  has_many :items
  has_many :values
end
