class Post < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 7}
    validates :content, presence: true
    
    belongs_to :blog
    belongs_to :user
    has_many :messages
end
