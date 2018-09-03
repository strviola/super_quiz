class String
  def reverse
    super + 'my implementation'
  end
end

puts 'ABC'.reverse

# q_8.rb:3:in `reverse': super: no superclass method `reverse' for "ABC":String (NoMethodError)
