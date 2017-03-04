/*:
 [Previous](@previous) / [Next](@next)
 
 # Lines
 
 Here we use random number generation (0 or 1) to decide on the direction for a line.
 
 When you run the playground, it should look something like this (exact form will vary each time):
 
 ![example-lines](example-lines.png "Lines")
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultLineWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Get some entropy (a random number, 0 or 1, but never 2)
        let value = random(from: 0, toButNotIncluding: 2)
                
        // Use the random value to decide on the direction of a line
        if value == 0 {
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x - 25, fromY: y - 25, toX: x + 25, toY: y + 25)
        } else {
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x + 25, fromY: y - 25, toX: x - 25, toY: y + 25)
            
        }
        
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
