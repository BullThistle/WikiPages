class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :phone, :integer
      t.column :website, :string
      t.column :open, :integer
      t.column :close, :integer
      t.column :business_id, :integer

      t.timestamps
    end
  end
end
