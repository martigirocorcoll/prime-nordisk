class Pagador < ApplicationRecord
  has_many :pagos
  has_many :expenses, through: :pagos
end
