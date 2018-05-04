class Author
  attr_accesor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
  end

end
