func addRomanNumerals (left: String, right: String) -> String {
    return isToRomanNumeral(romanNumeralToIs(left) + romanNumeralToIs(right))
}

func romanNumeralToIs (roman: String) -> String {
    switch roman {
    default: return roman
    }
}

func isToRomanNumeral(i:String) -> String {
    return i
}

assert(addRomanNumerals("I", right: "I") == "II")
assert(addRomanNumerals("I", right: "II") == "III")
assert(addRomanNumerals("I", right: "III") == "IV")






