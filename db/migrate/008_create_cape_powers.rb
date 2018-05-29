class CreateCapePowers
  def change
    create_table :cape_powers do |t|
      t.id :rating
      t.integer :power_id
      t.integer :cape_id
    end
  end
end
