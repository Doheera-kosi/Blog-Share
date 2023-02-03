class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  def update_likes_counter
    post.update(likes_counter: post.likes.all.length)
  end
end
