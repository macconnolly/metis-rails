class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.references :office, null: false, foreign_key: true
      t.string :name
      t.string :industry
      t.string :hq
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email

      t.timestamps
    end
  end
end
