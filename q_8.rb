class Foo
  def some_method
    puts 'I am Foo.'
    yield
  end
end

class Bar < Foo
  def some_method
    super do
      puts 'I am Bar.'
    end
  end
end

Bar.new.some_method

# I am Foo.
# I am Bar.
