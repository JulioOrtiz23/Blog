class Publication < ApplicationRecord

#The publications is one of the things that belongs to users so we have to relate it this table to users
#And to the publications have many comments so this to we have to relate it.

#The publications have many comments but,a publication belongs to a user. 
has_many :comments

#publication belongs to a user
belongs_to :user

end
