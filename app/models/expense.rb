class Expense < ApplicationRecord
  belongs_to :project
  belongs_to :provider
  has_many :pagos
  has_many :pagadors, through: :pagos
  has_one_attached :document

  def x_pagado
    pagado = 0
    self.pagos.each do |pago|
      pagado += pago.quantitat
    end
    total = self.quantitat

    return (pagado / total) * 100
  end

end
