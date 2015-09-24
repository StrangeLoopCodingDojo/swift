func addRomanNumerals (left: String, right: String) -> String {
    return isToRomanNumeral(romanNumeralToIs(left) + romanNumeralToIs(right))
}

func romanNumeralToIs (roman: String) -> String {
//    let chars = Array(roman.characters)
    var s = ""
    let chars = Array (roman.characters)
    for (i,c) in chars.enumerate(){
        
    }

    switch roman {
    case "V" : return "IIIII"
    case "X" : return "IIIIIIIIII"
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


romanNumeralToIs("IV")
romanNumeralToIs("VI")
stripIsPrefix("IV")

assert(addRomanNumerals("I", right: "I") == "II")
assert(addRomanNumerals("I", right: "II") == "III")
assert(addRomanNumerals("I", right: "III") == "IV")
assert(addRomanNumerals("II", right: "III") == "V")
assert(addRomanNumerals("III", right: "III") == "VI")
assert(romanNumeralToIs("V") == "IIIII")
assert(romanNumeralToIs("X") == "IIIIIIIIII")
assert(addRomanNumerals("I", right: "V") == "VI")
assert(romanNumeralToIs("IV") == "IIII")




