class Post < ApplicationRecord
  include ApplicationHelper

  belongs_to :user
  has_many :likes
  has_many :comments

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end

  def update_posts_counter
    user.increment!(:Posts_Counter)
  end
end
