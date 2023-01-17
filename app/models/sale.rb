class Sale < ApplicationRecord
  belongs_to :investment
  has_many :cobros
  has_many :compradors, through: :cobros
end
