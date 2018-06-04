class RenamePowerType < ActiveRecord::Migration[5.2]
  def up
    remove_column :powers, :type
  end

  def down
    add_column :powers, :name
  end
end
