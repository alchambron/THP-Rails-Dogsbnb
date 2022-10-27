class Dog < ApplicationRecord
  has_many :stolls
  has_many :dogsitter, through: :strolls
end
