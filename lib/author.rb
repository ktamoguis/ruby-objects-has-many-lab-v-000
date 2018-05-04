class Author
  attr_accesor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(posttitle)
    newpost = Post.new(posttitle)
    newpost.author = self
    add_post(newpost)
  end

  def self.post_count
    @@post_count
  end

end
