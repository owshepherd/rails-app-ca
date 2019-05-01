class AddFieldsToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :username, :string
    add_column :providers, :name, :string
    add_column :providers, :city, :string
    add_column :providers, :state, :string
    add_column :providers, :postcode, :integer
    add_column :providers, :minimum_persons, :integer
    add_column :providers, :cost_per_head, :float
  end
end
