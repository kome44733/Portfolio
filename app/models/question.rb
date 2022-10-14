class Question < ApplicationRecord
  belongs_to :customer
  belongs_to :profession
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
  
  has_many :replies
end
