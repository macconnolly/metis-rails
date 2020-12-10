class CreateSows < ActiveRecord::Migration[6.0]
  def change
    create_table :sows do |t|
      t.references :project, null: true, foreign_key: true
      t.decimal :Associate_1_days
      t.decimal :Associate_2_days
      t.decimal :Senior_Associate_days
      t.decimal :Manager_days
      t.decimal :Managing_Director_days
      t.decimal :Vice_President_days
      t.decimal :President_days
      t.decimal :Executive_Network_days
      t.decimal :Operations_Head_days
      t.decimal :Intern_days
      t.timestamps
    end
  end
end
