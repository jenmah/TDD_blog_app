class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
  validates :date, presence: true

  def show_comments
    return 'No comments' if comments.none?
    # return self.comments.first if self.comments.all.count < 2
    self.comments.all
    # self.comments.each do |comment|
    #   comment.opinion
    # end
  end

end
