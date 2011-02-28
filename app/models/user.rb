class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :email, :username

  # Setup accessible (or protected) attributes for your model
  attr_accessor :login
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :login

  has_many :questions

  protected
  def self.find_for_database_authentication(conditions)
    login = conditions.delete(:login)
    where(conditions).where(["username = :value OR email = :value", { :value => login }]).first
  end

end
