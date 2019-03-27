class CreateShopEmployee < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_employees do |t|
      t.references :employee, foreign_key: true
      t.references :shop, foreign_key: true
      t.timestamps 
    end
  end
end
