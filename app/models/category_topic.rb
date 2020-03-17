class CategoryTopic < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :topic, optional: true
end
