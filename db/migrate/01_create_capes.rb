class CreateCapes < ActiveRecord::Migration[4.2]
  def change
    create_table :capes do |t|
      t.string :real_name
      t.string :cape_name
      t.string :alignment
      t.integer :team_id
      t.integer :city_id
    end
  end
end
