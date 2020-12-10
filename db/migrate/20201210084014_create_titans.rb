class CreateTitans < ActiveRecord::Migration[6.0]
  def change
    create_table :titans do |t|
      t.references :office, null: false, foreign_key: true
      t.string :name
      t.date :birthday
      t.date :hire_date
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
