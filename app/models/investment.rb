class Investment < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  has_many :sales
  has_many :tasks
  has_many :projects

def rentabilidad
  beneficio = self.precio_venta - self.precio_adquisicion
  return (beneficio/self.precio_adquisicion) * 100
end


end
