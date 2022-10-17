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
  
  enum gender: { 不明: 0, 男性: 1, 女性: 2 }
end
