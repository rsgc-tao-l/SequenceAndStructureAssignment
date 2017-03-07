/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
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

// setting the x value for the grid background
for x in stride(from: 0, through: 475, by: 25){
    //setting the y value for the grid background
    for y in stride(from: 0, through: 475, by: 25){
        //a random value to determine the color for each block.
        var i = random(from: 0, toButNotIncluding: 4)
        // a random value to determine a pattern out of the 4 that is to be drawn in each block.
        var z = random(from: 0, toButNotIncluding: 2)
        //this is to make sure my blocks have a color assigned.
        canvas.drawShapesWithFill = true
        //the following block of codes determine the color of each bloack based on the var generated. i put two sets of possible color generation here to keep the order of color in a respective order while having some being complimentary and random.
        if z == 1 {
            canvas.fillColor = Color(hue: y+70, saturation: 50, brightness: 90, alpha: 90)
        }
        else{
            var m = y + 180
            if m > 360{
                m = (m % 360)+10
                canvas.fillColor = Color(hue: m+50, saturation: 50, brightness: 90, alpha: 90)
            }
        }
        //the drawing of 400 blocks to form a unifrom grid with color.
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color(hue: y-130, saturation: 50, brightness: 75, alpha: 100)
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 25)
        
        //the following codes will generate a pattern of lines accordingly to the generated value "i".
        
        for o in stride(from: 1, through: 25, by: 1){
            let value = random(from: 0, toButNotIncluding: 2)
            if i == 0{
                canvas.drawLine(fromX: x, fromY: y+o, toX: (x+25)-o, toY: y+25)}
            else if i == 1{
                canvas.drawLine(fromX: (x+o), fromY: y, toX: x+25, toY: y+25-o)}
            else if i == 2{
                canvas.drawLine(fromX: x, fromY: y+25-o, toX: x+25, toY: y-o)}
            else if i == 3{
                canvas.drawLine(fromX: x+o, fromY: y+25, toX: x+25, toY: y+o)}
        }
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
