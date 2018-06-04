class AddPowerName < ActiveRecord::Migration[5.2]
  def change
    add_column :powers, :name, :string
  end
end
