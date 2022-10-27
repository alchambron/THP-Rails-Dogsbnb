class Linkingtables < ActiveRecord::Migration[7.0]
  def change
    add_reference :strolls, :dogsitter, foreign_key: true
    add_reference :strolls, :dog, foreign_key: true
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
  end
end
