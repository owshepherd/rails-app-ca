class ChangeCostToIntegerInProviders < ActiveRecord::Migration[5.2]
  def change
    change_column :providers, :cost_per_head, :integer
  end
end
