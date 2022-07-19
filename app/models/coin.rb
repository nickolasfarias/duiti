class Coin < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  monetize :montante_cents

  validates :montante_cents, presence: true
end
