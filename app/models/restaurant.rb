class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese belgian italian french japanese]
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
