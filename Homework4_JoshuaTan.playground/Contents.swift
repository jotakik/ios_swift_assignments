/*:
 # Homework 4
 
 Joshua Tan
 
 20250905
 */

import UIKit
import PlaygroundSupport

let names = [
    "Airedale Terrier",
    "American Foxhounds",
    "Dutch Shepherd",
    "Havanese",
    "Leonberger",
    "Mudi",
    "Norwegian Lundehund",
    "Pharaoh Hound",
    "Scottish Terrier",
    "Tosa"
]

let desc = [
    "The Airedale Terrier stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
    "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
    "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
    "The Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
    "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
    "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
    "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",
    "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",
    "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",
    "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."
]

// Select a random dog
let dogInfo = Dictionary(uniqueKeysWithValues: zip(names, desc))

guard let randomDog = dogInfo.randomElement() else {
    fatalError("Dictionary is empty.")
}

// print name and description of random dog
print("\(randomDog.key): \(randomDog.value)\n")

// print image of random dog
if let image = UIImage(named: "\(randomDog.key).jpg") {
    
    // Create an image view to display the image
    let imageView = UIImageView(image: image)
    imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 200) // Adjust size and position as needed
    
    // Add the image view to the Playground's live view
    PlaygroundPage.current.liveView = imageView
}

// print name and description of all other dogs
for (dog, info) in dogInfo {
    if dog == randomDog.key {
        continue
    }
    
    print("\(dog): \(info)\n")
}
