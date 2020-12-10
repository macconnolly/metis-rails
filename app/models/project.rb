class Project < ApplicationRecord

  belongs_to :client, inverse_of: :projects
  has_one :sow, inverse_of: :project
  has_one :estimate, inverse_of: :project
  has_many :project_titans, inverse_of: :titan
  has_many :titans, through: :project_titans


  accepts_nested_attributes_for :sow, :estimate 

  enum phase: {
  	bd: 'BizDev', 
  	pitch: 'Pitched', 
  	negotiation: 'Drafting / SOW Negoiation', 
  	accepted: 'Accepted', 
  	in_progress: 'In Progress', 
  	complete: 'Completed', 
  	archived: 'Rejected'
  }

  enum category: {
    Strategy_Operationalization: 'Strategy Operationalization', 
    Operating_Model_Agility: 'Operating Model Agility', 
    Strategy_Development: 'Strategy Development', 
    Digital_and_Tech_Transformation: 'Digital & Tech Transformation', 
  }
  
end
