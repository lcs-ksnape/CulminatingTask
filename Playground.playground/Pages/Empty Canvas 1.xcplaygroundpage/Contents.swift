//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
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

// At the beginning turtle faces to the right. Heading is 0 degreees.
turtle.currentPosition()
turtle.currentHeading()

// Move turtle to middle of canvas
turtle.penUp()
turtle.forward(steps: canvas.width/2)

turtle.left(by: 90)
turtle.forward(steps: canvas.height/2)
turtle.drawSelf()

turtle.currentPosition()
turtle.currentHeading()

// We want to draw the letter K
turtle.forward(steps: 100)
//turtle.drawSelf()

// Turn the turtle around
turtle.right(by: 180)
turtle.drawSelf()


// Move the turtle back to middle of stick
turtle.penUp()
turtle.forward(steps: 50)
//turtle.drawSelf()

// Start drawing the first branch of the K
turtle.left(by:135)
//turtle.drawSelf()
turtle.penDown()
turtle.forward(steps: 85)
turtle.drawSelf()

// Drawing the second branch of the K
turtle.penUp()
turtle.backward(steps: 85)
//turtle.drawSelf()
turtle.right(by: 90)
//turtle.drawSelf()
turtle.penDown()
turtle.forward(steps: 85)
turtle.drawSelf()

// Start Drawing the A
turtle.penUp()
turtle.left(by: 45)
turtle.forward(steps: 25)
turtle.left(by: 70)
turtle.drawSelf()

// First Leg of A
turtle.forward(steps: 120)
//turtle.drawSelf()

// Drawing Second Leg
turtle.right(by: 135)
//turtle.drawSelf()
turtle.forward(steps: 135)
turtle.drawSelf()

// Connecting Bridge
turtle.backward(steps: 60)
turtle.penUp()
//turtle.drawSelf()
turtle.right(by: 115)
//turtle.drawSelf()
turtle.penDown()
turtle.forward(steps: 55)

// Drawing the T
turtle.penUp()
turtle.right(by: 180)
//turtle.drawSelf()
turtle.forward(steps: 120)
turtle.right(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 180)
//turtle.drawSelf()
turtle.penDown()
turtle.forward(steps: 120)
//turtle.drawSelf()

// Crossing off the T
turtle.left(by: 90)
turtle.penUp()
turtle.forward(steps: 40)
turtle.right(by: 180)
turtle.penDown()
turtle.forward(steps: 80)
//turtle.drawSelf()







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
