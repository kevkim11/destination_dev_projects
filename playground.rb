my_regex = /cat/
# puts my_regex.class   #   Regexp
#
# puts my_regex == "cat"   #   false
#
# puts "My cat eats catfood".sub(/cat/, "dog").sub(/catfood/, "dogfood")
#
# puts "My cat eats catfood".gsub("cat", "dog")
#
# str="My cat goes catatonic when I concatenate his food with Muscat grapes"
# puts str.gsub("cat", "dog")

contracts_arr =
    ["Hughes Missile Systems Company, Tucson, Arizona, is being awarded a $7,311,983 modification to a firm fixed price contract for the FY94 TOW missile production buy, total 368 TOW 2Bs. Work will be performed in Tucson, Arizona, and is expected to be completed by April 30, 1996. Of the total contract funds, $7,311,983 will expire at the end of the current fiscal year. This is a sole source contract initiated on January 14, 1991. The contracting activity is the U.S. Army Missile Command, Redstone Arsenal, Alabama (DAAH01-92-C-0260).",
     "Conventional Munitions Systems, Incorporated, Tampa, Florida, is being awarded a $6,952,821 modification to a firm fixed price contract for Dragon Safety Circuits Installation and retrofit of Dragon I Missiles with Dragon II Warheads. Work will be performed in Woodberry, Arkansas (90%), and Titusville, Florida (10%), and is expected to be completed by May 31, 1996. Contract funds will not expire at the end of the current fiscal year. This is a sole source contract initiated on May 2, 1994. The contracting activity is the U.S. Army Missile Command, Redstone Arsenal, Alabama (DAAH01-94-C-S076)."]

contracts_arr.each do |contract|
  mtch = contract.match(/\$[\d,]+/)
  puts mtch
end