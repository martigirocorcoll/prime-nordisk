class Provider < ApplicationRecord
  has_many :budgets
  has_many :projects, through: :budgets
end
