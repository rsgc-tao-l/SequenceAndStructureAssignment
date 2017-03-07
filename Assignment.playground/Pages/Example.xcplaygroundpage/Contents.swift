/*:
 [Previous](@previous) / [Next](@next)
 
 # Example
 
 The canvas is 500 by 500 pixels.
 
 It is sub-divided into 10 columns and rows.
 
 We can imagine it as a grid, then, of 100 squares.
 
 When you run the program, it should look like this:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, many possibilities can arise.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){

    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
