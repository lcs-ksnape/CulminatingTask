//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 450
let preferredHeight = 550
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// MARK: Functions


func drawArrow() {
    
    
    // Drawing the bottom of the arrow
    //turtle.drawSelf()
    turtle.penUp()
    turtle.right(by: 90)
    //turtle.drawSelf()
    turtle.penDown()
    turtle.forward(steps: 2 * squareSize)
    //turtle.drawSelf()

    // Drawing one of the sides of the arrow
    turtle.penUp()
    turtle.left(by: 90)
    turtle.penDown()
    turtle.forward(steps: 3 * squareSize)
    //turtle.drawSelf()

    // Drawing the first side of the arrow
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)

    // Drawing the first half of the tip of the arrow
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()

    // Drawing the other half of the arrow's tip
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()

    // Drawing the second side of the arrow
    turtle.left(by: 135)
    //turtle.drawSelf()
    turtle.forward(steps: 1 * squareSize)
    //turtle.drawSelf()

    // Drawing the last long side of the arrow
    turtle.right(by: 90)
    turtle.forward(steps: 3 * squareSize)


    // Swing around to face in same direction as when arrow started to be drawn
    turtle.left(by: 180)



    // Check the turtle's position
    //turtle.drawSelf()
}

func drawRow() {
    
    for _ in 1...6 {
        // Draw one arrow
        drawArrow()

        // Get into position to draw the next arrow
        turtle.penUp()
        turtle.forward(steps: 5 * squareSize)
        turtle.penDown()
    }
}


// MARK: Actual code for sketch
turtle.currentPosition()
turtle.currentHeading()

// Set the size of a square from our plan within this canvas
let squareSize = 15

// Draw a row
drawRow()

// Get the turtle into position to draw a new row
turtle.left(by: 90)
turtle.penUp()
turtle.forward(steps: 4 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 6 * 5 * squareSize)
turtle.right(by: 180)
turtle.penDown()

// Draw Row
drawRow()

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
