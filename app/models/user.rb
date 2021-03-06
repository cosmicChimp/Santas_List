class User < ActiveRecord::Base
    include Slugafiable::InstanceMethods
    extend Slugafiable::ClassMethods
    has_secure_password
    has_many :letters
    has_many :wishlists
    validates :email, uniqueness: true
    validates :name, :email, presence: true
    validates :password, presence: true, length: {minimum: 3}, :if => :password
    # validates_presence_of :name, :email, :password
end
