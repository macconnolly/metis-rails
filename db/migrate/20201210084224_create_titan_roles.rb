class CreateTitanRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :titan_roles do |t|
      t.references :titan, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
