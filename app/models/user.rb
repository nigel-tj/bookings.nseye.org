
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user,:receptionist ,:admin]
  after_initialize :set_default_role, :if => :new_record?
  acts_as_booker
  def set_default_role
    self.role ||= :admin
  end
end
