class CreatePowers < ActiveRecord::Migration[4.2]
  def change
    create_table :powers do |t|
      t.string :type
    end
  end
end
