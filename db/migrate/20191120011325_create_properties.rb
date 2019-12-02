class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_address
      t.float :monthly_rent

      t.timestamps
    end
  end
end
