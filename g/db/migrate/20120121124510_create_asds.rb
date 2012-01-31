class CreateAsds < ActiveRecord::Migration
  def change
    create_table :asds do |t|
       t.string :name
       t.string :title 
       t.string :bus
      t.timestamps
    end
  end
end
