class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, presence: true, length: { in: 6..20 }
  
  has_secure_password
  
  has_many :collections
  accepts_nested_attributes_for :collections
end
