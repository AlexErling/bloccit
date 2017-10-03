class Topic < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :sponsored_post, dependent: :destroy
    
   validates :description, length: { minimum: 15 }, presence: true
   validates :name, length: { minimum: 5 }, presence: true
 
end
