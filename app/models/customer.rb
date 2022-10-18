class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :questions, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :answers
  has_many :replies, foreign_key: :reply, dependent: :destroy
  
  def active_for_authentication?
    super && (is_deleted == false)
  end
  
  def self.searchCustomer(word,customer)
    customer = Customer.where("nickname LIKE ? OR enail LIKE ?","%#{word}%","%#{word}%")
  end
  

   # where('title LIKE ? OR body LIKE ?', "%#{keyword}%", "%#{keyword}%")
  
  validates :nickname, presence: true   ,length: { in: 1..15 }
  
  enum gender: { not_known: 0, male: 1, female: 2 }
end
