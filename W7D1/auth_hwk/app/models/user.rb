require 'bcrypt'
class User < ApplicationRecord
    validates :username, :session_token, presence: true 
    validates :password_digest, presence: {message: "Password can\'t' be blank"}
    validates :password, length: {minimum: 6, allow_nil: true }
    before_validation :ensure_token_session 

    attr_reader :password 

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil 
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
         self.session_token ||= self.class.generate_session_token
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end


end
