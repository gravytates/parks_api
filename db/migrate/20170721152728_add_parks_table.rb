class AddParksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :state
      t.integer :acres

      t.timestamps
    end
  end
end
