class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :stars
  end
end
