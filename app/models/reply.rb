class Reply < ApplicationRecord
  belongs_to :customer
  belongs_to :answer
  belongs_to :question
  validates :reply,presence:true,length: { in: 1..400 }
end
