class Profession < ApplicationRecord
  has_many :questions
  validates :profession, presence: true
end
