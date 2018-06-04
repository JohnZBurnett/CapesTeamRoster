class CreatePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :powers do |t|
      t.string :type
    end
  end
end
