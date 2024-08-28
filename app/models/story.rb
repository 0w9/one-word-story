class Story < ApplicationRecord
  validates :title, presence: true
  validates :story, presence: true
end
