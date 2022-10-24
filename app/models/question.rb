class Question < ApplicationRecord
  belongs_to :customer
  belongs_to :profession
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :replies,dependent: :destroy
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
  
  
  validates :post, presence: true,length: { in: 1..400 }
  
  
  def self.search(word)
    where("post LIKE?","%#{word}%")
  end
  
  def self.searchProfession(word,profession)
    profession = Question.where(profession_id: profession)
    profession.where("post LIKE?","%#{word}%")
  end
end
