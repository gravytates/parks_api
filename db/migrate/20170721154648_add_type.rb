class AddType < ActiveRecord::Migration[5.1]
  def change
    add_column :parks, :type, :string
  end
end
