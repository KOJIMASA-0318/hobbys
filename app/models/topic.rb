class Topic < ApplicationRecord
  has_many :category_topics
  has_many :categories, through: :category_topics
  has_many :comments
  belongs_to :user

end
