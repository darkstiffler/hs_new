class Dispensary < ActiveRecord::Base
  before_save :encrypt_password
  
  attr_accessor :password, :password_confirmation
  
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, unless: "password.nil?"
  
  def self.authenticate(email, password)
    user = User.find_by(email: email)
    
    if user
        #  BCrypt is the engine used for randomization of the 'salt' 'fish' hashes.
      fish = BCrypt::Engine.hash_secret(password, user.salt)
      if user.fish == fish
        return user
      end
    end
    nil
  end
  
  private
  
  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end
end