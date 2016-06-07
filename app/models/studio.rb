class Studio < ActiveRecord::Base
  validates :name, :category, :city, :state, :zip, presence: true

  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  belongs_to :user
end
