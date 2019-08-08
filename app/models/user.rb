class User < ApplicationRecord

	has_secure_password
	has_secure_token :confirmation_token

	validates :username,
		format: { with: /\A[a-zA-Z0-9_]{2,20}\z/, message: 'ne doit contenir que des caracteres alphanumeriques ou des _' },
		uniqueness: { case_sensitive: false }
	validates :email,
		format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i},
		uniqueness: { case_sensitive: false }
end
