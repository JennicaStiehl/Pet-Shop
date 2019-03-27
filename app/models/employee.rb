class Employee < ApplicationRecord
  has_many :shop_employees
  has_many :shops, through: :shop_employees
end
