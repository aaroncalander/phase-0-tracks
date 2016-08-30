# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn.swapcase"
=> “InVeStIgAtIoN”
"iNvEsTiGaTiOn".gsub /..?/, &:capitalize
=> “InVeStIgAtIoN”

"zom".insert(1, "o")
=> “zoom”

"enhance".center(16)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

a = "the usual "
a << "suspects" # << = .concat
=> "the usual suspects"

a = "the usual"
a.replace "the usual suspects"
=> "the usual suspects"

a = " suspects"
a.prepend("the usual")
=> "the usual suspects"

a = " suspects"
a.replace "the usual suspects"
=> "the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"
# .replace can be used

"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"
# .replace can be used

"Elementary,    my   dear        Watson!".squeeze (" ")
=> "Elementary, my dear Watson!"

# "z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"
=> 4