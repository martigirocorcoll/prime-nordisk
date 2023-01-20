class Budget < ApplicationRecord
  belongs_to :project
  belongs_to :provider
  has_one_attached :document
end
