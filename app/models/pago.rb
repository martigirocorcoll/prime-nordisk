class Pago < ApplicationRecord
  belongs_to :pagador
  belongs_to :expense
end
