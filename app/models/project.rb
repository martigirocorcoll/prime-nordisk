class Project < ApplicationRecord
  belongs_to :investment
  has_many :budgets
  has_many :providers, through: :budgets
end
