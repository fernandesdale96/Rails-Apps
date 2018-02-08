class User < ApplicationRecord
  has_many :sessions
  has_many :tweets
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates :username, length: {minimum: 3,  maximum: 64}, presence: true
  validates :password, length: {minimum: 8, maximum: 64}, presence: true
  validates :email, length: {minimum: 5, maximum: 500},  presence: true

  before_save :encrypt_password


  private

  def encrypt_password
    salt = BCrypt::Engine.generate_salt
    self.password =BCrypt::Engine.hash_secret(password,salt)
    self.salt = salt
  end
end
