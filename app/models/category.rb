class Category < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
end
