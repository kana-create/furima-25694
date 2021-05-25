class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  # VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  # validates :email, presence: true,uniqueness: { case_sensitive: true },format: {with: VALID_EMAIL_REGEX}
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, presence: true,length: { minimum: 6 },format: { with: VALID_PASSWORD_REGEX },confirmation: true
  validates :familyname , presence: true,format: { with: /\A[ぁ-んァ-ン一-龥々]/ }
  validates :firstname, presence: true,format: { with: /\A[ぁ-んァ-ン一-龥々]/ }
  validates :familyname_kana, presence: true,format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :firstname_kana , presence: true,format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday, presence: true
  
has_many :items
has_many :purchases
end
