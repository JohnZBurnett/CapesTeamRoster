class CapePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :cape_powers do |t|
      t.integer :rating
      t.integer :cape_id
      t.integer :power_id
    end
  end
end
