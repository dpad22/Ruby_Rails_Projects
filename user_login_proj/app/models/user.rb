class User < ActiveRecord::Base

    validates :fname, :lname, presence: true, length: {minimum: 2}
    validates :email, presence: true
    validates :age, presence: true, :inclusion => 10..150


end
