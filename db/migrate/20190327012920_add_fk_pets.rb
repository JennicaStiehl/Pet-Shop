class AddFkPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :shop_id, :integer
    add_foreign_key :pets, :shops
  end
end
