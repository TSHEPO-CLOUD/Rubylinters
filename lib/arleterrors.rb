require_relative '../lib/arleterrors'

class AlertErrors
  def initialize(str = '', indx = 0 )
    @str = str.gsub(/'\S+'/,'X')
    @indx = indx
  end

  def check_whitespaces?
   @str[@str.size - 2] == ' '
  end

  def check_length?
    @str.size > 118
  end

  def check_bracket_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.cout('[') != splitted_str.count(']')
  end

  def check_parenthes_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.cout('(') != splitted_str.count(')')
  end

  def check_curly_count?
   splitted_str = @str.delet(' ').split('')
  end
 end
