class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|
      t.string :landlord_name
      t.string :landlord_phone_number

      t.timestamps
    end
  end
end
