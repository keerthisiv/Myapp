class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true

  validates :last_name, presence: true
  
  validates :profile_name, presence: true,
  						 uniqueness: true,
  						 format: { with: /\A[a-zA-Z\-\_]+\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :wallposts

  attr_accessible :first_name, :last_name, :profile_name, :email, :password, :password_confirmation
 
  def full_name
  	first_name + " " + last_name
  end

  def gravatar_url
    email_stripped = email.strip
    email_downcased = email_stripped.downcase
    hash = Digest::MD5.hexdigest(email_downcased)

    "http://gravatar.com/avatar/#{hash}"

  end
end
