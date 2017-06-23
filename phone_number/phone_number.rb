require 'minitest/pride'
=begin
Clean up user-entered phone numbers so that they can be sent SMS messages.

The rules are as follows:

If the phone number is less than 10 digits assume that it is bad number
If the phone number is 10 digits assume that it is good
If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
If the phone number is 11 digits and the first number is not 1, then it is a bad number
If the phone number is more than 11 digits assume that it is a bad number
We've provided tests, now make them pass.

Hint: Only make one test pass at a time. Disable the others, then flip each on in turn after you get the current failing one to pass.
=end

class PhoneNumber
  # Constant
  RE = /^(1?)\W*(\d{3})\W*(\d{3})\W*(\d{4})$/
  def initialize(raw_string)
    @raw_string = raw_string
  end

  def number
    @number ||= set_number
  end

  def area_code
    # b = @raw_string.match(RE).captures # Gives you an array with all the groups
    @raw_string.match(RE)[2]
    #method to extract the area code from the number
  end

  def to_s
    number
    if @raw_string.match(RE)
      @raw_string[0]='' if @raw_string =~ /^1\d{10}/
    end
    "(#{number[0..2]}) #{number[3..5]}-#{number[6...10]}"
  end

  private

  def set_number
    if @raw_string.match(RE)
      # Check to see if the number is valid by comparing it to the RE
      @raw_string[0]='' if @raw_string =~ /^1\d{10}/
      @raw_string.split('').delete_if {|x| /\D/.match(x)}.join
    else
      '0000000000'
    end
  end
end
