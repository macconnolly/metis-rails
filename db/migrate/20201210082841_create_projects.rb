class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :client, null: false, foreign_key: true
      t.string :name
      t.string :category
      t.string :subcategory
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
