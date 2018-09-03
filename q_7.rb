class Foo
  def method_1
    puts 'Foo 1'
  end
end

class Bar < Foo
  alias method_2 method_1

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
# Traceback (most recent call last):
#   1: from q_7.rb:22:in `<main>'
# q_7.rb:16:in `method_2': super: no superclass method `method_2' for #<Bar:0x00007fcd3704b148> (NoMethodError)
