class Comprador < ApplicationRecord
  has_many :cobros
  has_many :sales, through: :cobros
  has_one_attached :document
end
