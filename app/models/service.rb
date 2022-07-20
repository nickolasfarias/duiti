class Service < ApplicationRecord
  belongs_to :category
  belongs_to :worker
  has_many :offers
  has_many :reviews
  monetize :preço_cents

  validates :nome, :category, :preço_cents, presence: true
end
