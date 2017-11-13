class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :types, :type, :business
  end
end
