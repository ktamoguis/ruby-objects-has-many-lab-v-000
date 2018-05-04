class Author
  attr_accesor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(posttitle)
    newpost = Post.new(posttitle)
    newpost.author = self
    add_post(newpost)
  end

end
