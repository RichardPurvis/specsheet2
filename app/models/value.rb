class Value < ActiveRecord::Base
  belongs_to :column
  belongs_to :sheet
end
