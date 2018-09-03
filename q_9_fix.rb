module StringExtension
  refine String do
    def reverse
      super + 'my implementation'
    end
  end
end

using StringExtension

puts 'ABC'.reverse

# CBAmy implementation
