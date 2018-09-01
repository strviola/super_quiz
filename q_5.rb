class Foo
  def some_method
    puts '1'
  end

  def some_method
    super
    puts '2'
  end
end

Foo.new.some_method

# q_5.rb:7:in `some_method': super: no superclass method `some_method' for #<Foo:0x00007f84de80c4f0> (NoMethodError)
