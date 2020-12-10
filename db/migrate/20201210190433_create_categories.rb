class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string      :text
      t.references  :parent
      t.references  :project
      t.timestamps
    end
  end
end
