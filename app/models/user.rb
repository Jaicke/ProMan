class User < ActiveRecord::Base
  
  # Associations
  has_many :projects
  has_one :profile_user
  accepts_nested_attributes_for :profile_user
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
