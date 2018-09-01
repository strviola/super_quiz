class Foo
  def some_method(arg)
    puts "Foo: #{arg}"
  end
end

class Bar < Foo
  def some_method(arg)
    super(arg)
    puts "Bar: #{arg}"
  end
end

Bar.new.some_method('Hey')

# Foo: Hey
# Bar: Hey
