class RenameConferencestoSubname < ActiveRecord::Migration
  def up
  	rename_column :advs, :conferences, :subname
  end

  def down
  	rename_column :advs, :subname, :conferences
  end
end
