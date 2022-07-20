class Coin < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  belongs_to :worker

  monetize :montante_cents

  validates :montante_cents, presence: true
end
