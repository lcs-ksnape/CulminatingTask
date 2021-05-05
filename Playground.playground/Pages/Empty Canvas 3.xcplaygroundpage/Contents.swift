//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 400
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

// Replace this comment with your first comment – what is the goal of the code you're about to write?


// Set the size of a square from our plan within this canvas
let triangleEdgeLength = 30

func bottom() {
    // Start drawing the Bottom Parallelogram
    turtle.penDown()
    turtle.forward(steps: triangleEdgeLength)
    turtle.left(by: 60)
    turtle.forward(steps: triangleEdgeLength)
    turtle.left(by: 120)
    turtle.forward(steps: triangleEdgeLength)
    turtle.left(by: 60)
    turtle.forward(steps: triangleEdgeLength)

}

func top() {
    // Draw Top Parallelogram
    turtle.right(by: 180)
    turtle.penUp()
    turtle.forward(steps: triangleEdgeLength)
    turtle.penDown()
    turtle.left(by: 60)
    turtle.forward(steps: triangleEdgeLength)
    turtle.right(by: 120)
    turtle.forward(steps: triangleEdgeLength)
    turtle.right(by: 60)
    turtle.forward(steps: triangleEdgeLength)
}

func position() {
    // Get into position to draw New Parallelogram
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: triangleEdgeLength)
    turtle.left(by: 60)
    turtle.forward(steps: triangleEdgeLength)
    turtle.left(by: 180)
}

func column() {
    // Draw a column of paralllograms
    for _ in 1...7 {

        bottom()

        top()

        position()
    }
}

turtle.setX(to: 50)

// Draw column 1
column()

// Get back to position to draw next column

// Turn to begin going down the canvas
turtle.drawSelf()
turtle.penUp()
turtle.right(by: 60)
turtle.drawSelf()

// Go down the canvas
for _ in 1...7 {

    turtle.forward(steps: triangleEdgeLength)
    turtle.drawSelf()
    turtle.right(by: 60)
    turtle.forward(steps: triangleEdgeLength)
    turtle.drawSelf()
    turtle.left(by: 60)
    turtle.drawSelf()
}

// Getting into position to draw next column
turtle.left(by: 60)
turtle.forward(steps: triangleEdgeLength)
turtle.drawSelf()
turtle.left(by: 60)
turtle.forward(steps: triangleEdgeLength)
turtle.drawSelf()
turtle.right(by: 60)
turtle.drawSelf()
turtle.penDown()

// Draw column 2
column()


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
