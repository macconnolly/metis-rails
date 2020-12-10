class Office < ApplicationRecord
	has_many :clients
	has_many :projects, through: :clients
	has_many :sows, through: :projects
	has_many :estimates, through: :projects


	has_many :titans

	enum name: {east: 'East Coast', west: 'West Coast', central: 'Dallas'}

end
