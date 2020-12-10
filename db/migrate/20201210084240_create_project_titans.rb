class CreateProjectTitans < ActiveRecord::Migration[6.0]
  def change
    create_table :project_titans do |t|
      t.references :project, null: false, foreign_key: true
      t.references :titan, null: false, foreign_key: true
      t.string :name
      t.string :comments

      t.timestamps
    end
  end
end
