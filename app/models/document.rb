class Document < ApplicationRecord
  has_one_attached :pdf
  belongs_to :investment
end
