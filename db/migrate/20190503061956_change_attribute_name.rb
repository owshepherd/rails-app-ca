class ChangeAttributeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :avatar, :uploaded_image
  end
end
