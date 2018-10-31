class Comment < ApplicationRecord

    #The comments is the daughter table because the comments belongs to a publications and a users.
    #So many users can have a comments, and, many publications have comments

    #These are the relations of the comments
    #A comment belongs to publication
    belongs_to :publication
    #And a comment belongs to user
    belongs_to :user

end
