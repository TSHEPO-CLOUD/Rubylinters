 require 'rainbow'
class AlertErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      Rainbow("Line #{index + 1} trailing whitespace(s) detected").red
    when 2

      Rainbow("Line #{index + 1} exceeds recommended length").red
    when 3
      Rainbow("Line #{index + 1} unclosed parentheses detected").red
    when 4

      Rainbow("Line #{index + 1} unclosed brackets detected").red
    when 5

      Rainbow("Line #{index + 1} unclosed curly braces detected").red

    end 
   end

   def self.all
    ObjectSpace.each_object(self).to_a
  end
 end

 