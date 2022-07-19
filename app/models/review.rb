class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :comentario, :avaliaçao, presence: true
end
