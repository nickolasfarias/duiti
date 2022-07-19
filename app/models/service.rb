class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :offers
  has_many :reviews

  validates :nome, :categoria, :preço, presence: true
end
