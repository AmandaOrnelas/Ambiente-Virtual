class Aluno < ApplicationRecord
  before_save { email.downcase! }
  validates :nome, presence: true, length: {maximum: 100}
  validates :cpf, presence: true, uniqueness: true, length: {maximum: 12}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true,
  uniqueness: { case_sensitive: false }  

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  # Returns the hash digest of the given string.
  def Aluno.digest(string)
   
  end

end
