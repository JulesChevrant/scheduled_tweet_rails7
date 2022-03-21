# email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password # method from rails : will convert the password, make sure the password and password_confirmation match. Will then run the pw through bcrypt to credit digest. That will convert them into a password_digest for us.

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
