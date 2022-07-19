class Offer < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_one :coin
end
