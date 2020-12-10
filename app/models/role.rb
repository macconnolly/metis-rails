class Role < ApplicationRecord
	has_many :titan_roles
	has_many :titans, through: :titan_roles

end
