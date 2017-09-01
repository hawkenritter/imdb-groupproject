class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  def comment_date
  	date = self.created_at
  	date.strftime('%B %e, %Y')
  end

  def comment_time
  	time = self.created_at
  	time.strftime(" %l:%M %p")
  end
end
