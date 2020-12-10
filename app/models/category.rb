class Category < ApplicationRecord
  
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_category, :class_name => "Category", optional: true

   accepts_nested_attributes_for :subcategories
end