class Post < ApplicationRecord
    validates :title, presence:true, exclusion: { in: ['True Facts']}
    validates :content, length:{minimum:250}
    validates :summary, length:{maximum:250}
    validates :category, acceptance:{ accept: ['Fiction', 'Non-Fiction'],message: "is not included in the list" } 
end
