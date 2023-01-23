class Investment < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  has_many :sales
  has_many :tasks
  has_many :documents
  has_many :projects
  has_one_attached :photo
  has_one_attached :analisis
  has_many_attached :documentos

def rentabilidad
  unless self.precio_venta.nil? && self.precio_adquisicion.nil? && self.gastos.nil?
    gasto = self.precio_adquisicion + self.gastos
    beneficio = self.precio_venta - gasto
    return (beneficio / gasto) * 100
  else
    return 0
  end
end

def linked_location
  unless self.google_location.nil?
    self.google_location.split('"',3)[1]
  else
    "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d149433181.77292404!2d0!3d-17.41699292008704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xa4b9967b3390754b%3A0x6e52be1f740f2075!2sAnt%C3%A1rtida!5e1!3m2!1ses!2ses!4v1674123239102!5m2!1ses!2ses"
  end
end


end
