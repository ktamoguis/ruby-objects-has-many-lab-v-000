class Author
  attr_accesor :name

  def initialize(name)
    @name = name
    @posts = []
  end

end
