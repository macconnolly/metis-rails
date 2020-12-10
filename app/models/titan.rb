class Titan < ApplicationRecord
	belongs_to :office

	
	
	has_many :project_titans
	has_many :projects, through: :project_titans
	has_many :clients, through: :projects

	has_many :titan_roles
	has_many :roles, through: :titan_roles
end
