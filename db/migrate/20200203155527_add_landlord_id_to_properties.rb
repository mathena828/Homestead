class AddLandlordIdToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :landlord_id, :integer
  end
end
