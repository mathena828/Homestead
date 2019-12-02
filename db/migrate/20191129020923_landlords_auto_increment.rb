class LandlordsAutoIncrement < ActiveRecord::Migration[6.0]
  def change
  	execute "ALTER TABLE landlords AUTO_INCREMENT=1;"
  end
end
