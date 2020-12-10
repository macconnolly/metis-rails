class Client < ApplicationRecord
  belongs_to :office, inverse_of: :clients
  has_many :projects, inverse_of: :client
end
