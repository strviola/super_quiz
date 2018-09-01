class Foo
  def method_1
    puts 'Foo 1'
  end

  alias method_2 method_1
  # alias_method :method_2, :method_1
end

class Bar < Foo
  def method_1
    super
    puts 'Bar 1'
  end

  def method_2
    super
    puts 'Bar 2'
  end
end

Bar.new.method_1
Bar.new.method_2

# Foo 1
# Bar 1
# Foo 1
# Bar 2
