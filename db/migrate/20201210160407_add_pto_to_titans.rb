class AddPtoToTitans < ActiveRecord::Migration[6.0]
  def change
    add_column :titans, :pto_days, :decimal
  end
end
