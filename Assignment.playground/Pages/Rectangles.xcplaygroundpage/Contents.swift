/*:
 [Previous](@previous) / [Next](@next)
 
 # Rectangles
 
 Here we use random number generation (0 through 3) to determine the opacity of a square's border, and it's offset (north, south, east, or west).
 
 When you run the playground, it should look something like this (exact form will vary each time):
 
 ![example-rectangles](example-rectangles.png "Rectangles")
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 5

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the centre dot
        canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: y, width: 1, height: 1)
        
        // Get some entropy (a random number, 0 through 3, but never 4)
        let value = random(from: 0, toButNotIncluding: 4)
        
        // Set the alpha based on the random value
        canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 20 + 20 * value)
        
        // Draw square in different position based on random value
        // (Look carefully at arguments for parameters)
        let offset = 10
        if value == 0 { // north
            canvas.drawRectangle(centreX: x, centreY: y + offset, width: 30, height: 30)
        } else if value == 1 { // west
            canvas.drawRectangle(centreX: x + offset, centreY: y, width: 30, height: 30)
        } else if value == 2 { // south
            canvas.drawRectangle(centreX: x, centreY: y - offset, width: 30, height: 30)
        } else { // east
            canvas.drawRectangle(centreX: x - offset, centreY: y, width: 30, height: 30)
        }
        
        
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
