class Post < ApplicationRecord
  has_many :likes, foreign_key: 'posts_id'
  has_many :comments, foreign_key: 'posts_id'
  belongs_to :author, class_name: 'User', dependent: :destroy, foreign_key: 'author_id'

  validates :title, length: { maximum: 250 }, presence: true
  validates :text, length: { minimum: 5 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_posts_counter
  def update_posts_couter
    author.increment!(:posts_counter)
  end

  def last_five_comments
    comments.last(5)
  end
end
