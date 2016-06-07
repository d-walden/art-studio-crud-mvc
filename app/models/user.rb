class User < ActiveRecord::Base
  has_secure_password

  validates :email, :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :reviews
  has_many :studios
  has_many :reviewed_studios, through: :reviews, source: :studio
end
