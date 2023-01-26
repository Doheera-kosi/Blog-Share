class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :text, presence: true

  after_save :update_posts_counter

  def update_comments_counter
    post.increment!(:comments_couter)
  end
end
