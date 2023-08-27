class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :news

  #Validaciones 
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }

end
