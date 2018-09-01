module FooModule
  def some_method
    puts 'I am FooModule.'
  end
end

class Bar
  include FooModule

  def some_method
    super
    puts 'I am Bar.'
  end
end

Bar.new.some_method

# I am FooModule.
# I am Bar.
