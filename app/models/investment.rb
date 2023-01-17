class Investment < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  has_many :sales
end
