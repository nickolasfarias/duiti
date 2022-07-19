class Offer < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_one :coin

  monetize :preço_cents

  validates :preço_cents, presence: true
end
