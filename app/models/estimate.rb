class Estimate < ApplicationRecord
  belongs_to :project, inverse_of: :estimate
end
