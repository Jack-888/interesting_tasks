class String

  def valid?
    stack = []
    brackets = { '{' => '}', '[' => ']', '(' => ')' }
    self.each_char do |char|
      stack << char if brackets.key?(char)
      return false if brackets.key(char) && brackets.key(char) != stack.pop
    end
    stack.empty?
  end

  def valid2?
    str = self.clone
    begin
      brackets = str[/\(\)|\[\]|\{\}|\<\>/]
      if brackets.nil?
        return false
      end
      str[brackets] = ""
    end until str.empty?
    true
  end

end

p "{(})".valid?
p "{{[]".valid?
p "{[()]}".valid?

