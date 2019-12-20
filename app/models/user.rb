class User < ApplicationRecord
  before_save{self.email=self.email.downcase}
  validates :name, :email ,presence: true,length:{maximum: 255,minimum: 2}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,format: { with: VALID_EMAIL_REGEX },uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 8}
end
