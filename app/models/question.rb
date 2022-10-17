class Question < ApplicationRecord
  belongs_to :customer
  belongs_to :profession
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
  
  has_many :replies
  
  def self.search(word)
    where("post LIKE?","%#{word}%")
  end
  
  def self.searchProfession(word,profession)
    profession = Question.where(profession_id: profession)
    profession.where("post LIKE?","%#{word}%")
  end
end
