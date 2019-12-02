class RemoveLandlordFromProperty < ActiveRecord::Migration[6.0]
  def change
  	remove_column :properties, :landlords_id, :bigint
  	add_column :properties,  :landlord_id, :bigint
  end
end
