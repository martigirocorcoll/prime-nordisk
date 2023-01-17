class Expense < ApplicationRecord
  belongs_to :project
  belongs_to :provider
  has_many :pagos
  has_many :pagadors, through: :pagos
end
