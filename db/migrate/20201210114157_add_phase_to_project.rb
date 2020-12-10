class AddPhaseToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :phase, :string
  end
end
