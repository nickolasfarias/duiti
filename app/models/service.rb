class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :offers
  has_many :reviews
  monetize :preço_cents

  validates :nome, :categoria, :preço_cents, presence: true
end
