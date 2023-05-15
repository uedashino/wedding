class Guest < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :address, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :attend, presence: true, length: { maximum: 255 }
  validates :allergy, presence: true, length: { maximum: 255 }
  validates :message, presence: true, length: { maximum: 255 }
end