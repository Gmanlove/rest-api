class Person < ApplicationRecord
    # Attributes
    validates :name, presence: true, length: { maximum: 255 }
    validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
  end
  