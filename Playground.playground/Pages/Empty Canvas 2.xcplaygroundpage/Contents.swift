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

turtle.currentPosition()
turtle.currentHeading()

// Move turtle to middle of canvas
turtle.penUp()
turtle.forward(steps: canvas.width/2)

turtle.left(by: 90)
turtle.forward(steps: canvas.height/2)
//turtle.drawSelf()

// Drawing the bottom of the arrow
//turtle.drawSelf()
turtle.penUp()
turtle.right(by: 90)
//turtle.drawSelf()
turtle.penDown()
turtle.forward(steps: 30)
//turtle.drawSelf()

// Drawing one of the sides of the arrow
turtle.penUp()
turtle.left(by: 90)
turtle.penDown()
turtle.forward(steps: 100)
//turtle.drawSelf()

// Drawing the first side of the arrow
turtle.right(by: 90)
turtle.forward(steps: 15)

// Drawing the first half of the tip of the arrow
turtle.left(by: 135)
turtle.forward(steps: 43)
//turtle.drawSelf()

// Drawing the other half of the arrow's tip
turtle.left(by: 90)
turtle.forward(steps: 43)
//turtle.drawSelf()

// Drawing the second side of the arrow
turtle.left(by: 135)
//turtle.drawSelf()
turtle.forward(steps: 15)
//turtle.drawSelf()

// Drawing the last long side of the arrow
turtle.right(by: 90)
turtle.forward(steps: 100)







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
