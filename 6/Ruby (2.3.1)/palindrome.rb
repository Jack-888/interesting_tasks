# def palindrome?(str)
#   str == str.reverse
# end
#
# p palindrome?("sos")

class String

def palindrome?
  letters = self.downcase.scan(/\w/)
  letters == letters.reverse
end

end

# p "sos".palindrome?

a = "Sos"
p a.palindrome?