class Foo
  def some_method(arg = 'Foo')
    puts "Foo: #{arg}"
  end
end

class Bar < Foo
  def some_method(arg1, arg2)
    super
    puts "Bar: #{arg1}, #{arg2}"
  end
end

Bar.new.some_method('Bar1', 'Bar2')

# q_3.rb:2:in `some_method': wrong number of arguments (given 2, expected 0..1) (ArgumentError)
