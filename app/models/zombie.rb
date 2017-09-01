class Zombie < ApplicationRecord
  has_one :brain, dependent: :destroy
  has_many :weapons, dependent: :destroy

  #scope
  scope :filter_one, -> { all.order(:age)}
  scope :younger, -> { where("age<?",34)}
  scope :full_table, -> { all.include( :brains )}
end
