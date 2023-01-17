class Comprador < ApplicationRecord
  has_many :cobros
  has_many :sales, through: :cobros
end
