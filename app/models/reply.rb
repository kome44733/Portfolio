class Reply < ApplicationRecord
  belongs_to :customer
  belongs_to :answer
  belongs_to :question
end
