class Question < ApplicationRecord
  belongs_to :customer
  has_many :answer, dependent: :destroy
end
