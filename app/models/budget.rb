class Budget < ApplicationRecord
  belongs_to :project
  belongs_to :provider
end
