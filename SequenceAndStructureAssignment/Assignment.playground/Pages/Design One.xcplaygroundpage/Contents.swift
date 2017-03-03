/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
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


// rectangle grids
for x in stride(from: 0, through: 475, by: 25){
    for y in stride(from: 0, through: 475, by: 25){
        var z = random(from: 0, toButNotIncluding: 2)
        canvas.drawShapesWithFill = true
        if z == 1 {
            canvas.fillColor = Color(hue: y, saturation: 50, brightness: 65, alpha: 90)
        }
        else{
            var m = y + 180
            if m > 360{
                m = (m % 360)+10
                canvas.fillColor = Color(hue: m, saturation: 50, brightness: 65, alpha: 90)
            }
        }
        
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 25)
    }
}
//random background color for the rectangles.

///*:
// ## Template code
// The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
// */
PlaygroundPage.current.liveView = canvas.imageView
