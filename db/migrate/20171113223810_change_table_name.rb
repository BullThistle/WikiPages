class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :tasks, :businesses
  end
end
