class Shop < ApplicationRecord
  has_many :pets
  has_many :shop_employees
  has_many :employees, through: :shop_employees

  def self.total_pets
    Shop.joins(:pets).count(:id)
  end
end
