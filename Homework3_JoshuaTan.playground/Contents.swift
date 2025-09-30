/*:
 # Homework 3
 ## Joshua Tan
 ## 20250902
 */

/**
 Converts temperature in Celsius to Fahrenheit
 
 - returns:
 Fahrenheit temperature as a Double
 
 - parameters:
    - oC: Celsius temperature as a Double
 */
let c2f = {(oC: Double) -> Double in
    return oC * 9 / 5 + 32
}

/**
 Converts temperature in Fahrenheit to Celsius
 
 - returns:
 Celsius temperature as a Double
 
 - parameters:
    - oF: Fahrenheit temperature as a Double
 */
let f2c = {(oF: Double) -> Double in
    return (oF - 32) * 5 / 9
}

/**
 Converts temperature in Kelvin to Celsius
 
 - returns:
 Celsius temperature as a Double
 
 - parameters:
    - oK: Kelvin temperature as a Double
 */
let k2c = {(oK: Double) -> Double in
    return oK - 273.15
}

/**
 Converts temperature in Celsius to Kelvin
 
 - returns:
 Kelvin temperature as a Double
 
 - parameters:
    - oC: Celsius temperature as a Double
 */
let c2k = {(oC: Double) -> Double in
    return oC + 273.15
}

/**
 Converts temperature in Kelvin to Fahrenheit
 
 - returns:
 Fahrenheit temperature as a Double
 
 - parameters:
    - oK: Kelvin temperature as a Double
 */
let k2f = {(oK: Double) -> Double in
    return (oK - 273.15) * 9 / 5 + 32
}

/**
 Converts temperature in Fahrenheit to Kelvin
 
 - returns:
 Kelvin temperature as a Double
 
 - parameters:
    - oF: Fahrenheit temperature as a Double
 */
let f2k = {(oF: Double) -> Double in
    return (oF - 32) * 5 / 9 + 273.15
}

/**
 Converts temperature from one temperature scale to another
 
 - returns:
 Converted temperature as a Double
 
 - parameters:
    - temp: original temperature as an Int
    - using: conversion closure expression, e.g. c2f
 */
func convertTemperature(_ temp: Int, using: (Double) -> Double) -> Double {
    return using(Double(temp))
}

let fTempFromC = convertTemperature(25, using: c2f)  // 25°C to °F
print("25°C = \(fTempFromC)°F")

let cTempFromF = convertTemperature(77, using: f2c)  // 77°F to °C
print("77°F = \(cTempFromF)°C")

let kTempFromC = convertTemperature(0, using: c2k)
print("0°C = \(kTempFromC) K")

let cTempFromK = convertTemperature(273, using: k2c)
print("273 K = \(cTempFromK)°C")

let kTempFromF = convertTemperature(32, using: f2k)
print("32°F = \(kTempFromF) K")

let fTempFromK = convertTemperature(300, using: k2f)
print("300 K = \(fTempFromK)°F")
