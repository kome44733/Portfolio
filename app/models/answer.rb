class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :customer
  has_many :replies, dependent: :destroy,length: { in: 1..400 }
  
end
