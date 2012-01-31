class RemoveBusFromAsd < ActiveRecord::Migration
  def up
  	remove_column :asds, :bus
  	remove_column :asds, :title
  end

  def down
  	 add_column :asds, :bus
  	 add_column :asds, :title
  end
end
