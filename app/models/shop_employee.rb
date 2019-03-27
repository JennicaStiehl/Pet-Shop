class ShopEmployee < ApplicationRecord
  belongs_to :shop
  belongs_to :employee
end
