class Sale < ApplicationRecord
  belongs_to :investment
  has_many :cobros
  has_many :compradors, through: :cobros
  has_one_attached :document

  def x_cobrado
    cobrado = 0
    self.cobros.each do |cobro|
      cobrado += cobro.quantitat
    end
    total = self.quantitat

    return (cobrado / total) * 100
  end
end
