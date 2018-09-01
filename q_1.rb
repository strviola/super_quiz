class Foo
  def some_method
    puts 'I am Foo.'
  end
end

class Bar < Foo
  def some_method
    super
    puts 'I am Bar.'
  end
end

Bar.new.some_method

# I am Foo.
# I am Bar.
