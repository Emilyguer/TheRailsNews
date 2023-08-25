class News < ApplicationRecord

    #Validaciones 
    validates :title, presence: true
    validates :author, presence: true
    validates :content, presence: true
    validates :publication_date, presence: true

    #Ralaciones 
    has_many :comments

end
