class Usuario < ApplicationRecord
  #has_secure_password
  belongs_to :tipousuario

  validates :email, presence: true, confirmation: true
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i   
  validates :email, format: { with: VALID_EMAIL_REGEX, message: "incorrecto" }
end
