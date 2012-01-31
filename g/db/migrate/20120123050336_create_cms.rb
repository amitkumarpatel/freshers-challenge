class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :name
      t.references :adv

      t.timestamps
    end
    add_index :cms, :adv_id
  end
end
