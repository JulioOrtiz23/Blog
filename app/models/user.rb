class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #The user is most important on the blog because have all the publications and comments. so we have to relate this tables
  #So we can say that the user have many publications
  has_many :Publications
  #and have many comments
  has_many :comments

end
