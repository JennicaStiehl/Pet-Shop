class Pet < ApplicationRecord
  belongs_to :shop

  validates_presence_of :animal_type, :age
  validates_numericality_of :age
  
end
