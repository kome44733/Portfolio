class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :questions, dependent: :destroy
  has_many :answers
  has_many :replies, foreign_key: :reply, dependent: :destroy
  belongs_to :profession
  
  enum gender: { not_know: 0, male: 1, female: 2 }
end
