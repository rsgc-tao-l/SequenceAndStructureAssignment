/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
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
// draw my quadratic
if x > 300{
    let h = x + 25
    var priorY = 0
    canvas.defaultLineWidth = 2
    for p in 1...50{
        let y = (p-h)*(p-h)
        canvas.drawLine(fromX: p-1, fromY: priorY, toX: p, toY: y)
        priorY = y


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
