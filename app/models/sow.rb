class Sow < ApplicationRecord
  belongs_to :project, inverse_of: :sow
end
