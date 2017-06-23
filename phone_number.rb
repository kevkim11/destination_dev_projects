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

  def initialize(raw_string)
    @raw_string = raw_string
  end

  def number
    #method for parsing the raw number string based on the rules in the instructions
    if @raw_string =~ /d{10}/
      p 'Its a 10 digit number'
      phone_number = @raw_string
      phone_number
    end

  end

  def area_code
    #method to extract the area code from the number
  end

  def to_s
    #method to pretty print (last two tests)
  end
end

p PhoneNumber.new('1234567890').number