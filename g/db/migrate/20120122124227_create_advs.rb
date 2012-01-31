class CreateAdvs < ActiveRecord::Migration
  def change
    create_table :advs do |t|
      t.string :conferences
      t.references :asd

      t.timestamps
    end
    add_index :advs, :asd_id
  end
end
