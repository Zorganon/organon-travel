class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip
  
  validates :body, presence: true
  validates :user, presence: true
  validates :trip, presence: true
end
