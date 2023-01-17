class Provider < ApplicationRecord
  has_many :budgets
  has_many :projects, through: :budgets
  has_many :expenses
  has_many :projects, through: :expenses
end
