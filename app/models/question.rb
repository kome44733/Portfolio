class Question < ApplicationRecord
  belongs_to :customer
  belongs_to :profession
  has_many :answers, dependent: :destroy
  has_many :replies
end
