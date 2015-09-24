func addRomanNumerals (left: String, right: String) -> String {
    return isToRomanNumeral(romanNumeralToIs(left) + romanNumeralToIs(right))
}

func romanNumeralToIs (roman: String) -> String {
    switch roman {
    default: return roman
    }
}

func isToRomanNumeral(i:String) -> String {
    if (i.hasPrefix("IIIII")) {
        return "V" + isToRomanNumeral(String(i.characters.dropFirst(5)))
    }
    switch i {
        case "IIII": return "IV"
        default: return i
    }
}

assert(addRomanNumerals("I", right: "I") == "II")
assert(addRomanNumerals("I", right: "II") == "III")
assert(addRomanNumerals("I", right: "III") == "IV")
assert(addRomanNumerals("II", right: "III") == "V")
assert(addRomanNumerals("III", right: "III") == "VI")






