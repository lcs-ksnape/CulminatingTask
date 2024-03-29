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


// Replace this comment with your first comment – what is the goal of the code you're about to write?


func drawsquare(){
    // drawing a single square
    turtle.penDown()
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
}

func fill() {
    turtle.penUp()
    turtle.forward(steps: 20)
    for _ in 1...9 {
    turtle.left(by: 90)
    turtle.penUp()
    turtle.forward(steps: 1)
    turtle.left(by: 90)
    turtle.forward(steps: 1)
    turtle.penDown()
    turtle.forward(steps: 18)
    turtle.penUp()
    turtle.forward(steps: 1)

    turtle.right(by: 90)
    turtle.penUp()
    turtle.forward(steps: 1)
    turtle.right(by: 90)
    turtle.forward(steps: 1)
    turtle.penDown()
    turtle.forward(steps: 18)
    turtle.penUp()
    turtle.forward(steps: 1)
    }
    turtle.left(by: 90)
    turtle.penUp()
    turtle.forward(steps: 1)
    turtle.left(by: 90)
    turtle.forward(steps: 1)
    turtle.penDown()
    turtle.forward(steps: 18)
    turtle.penUp()
    turtle.forward(steps: 1)
    
    turtle.penUp()
    turtle.right(by: 180)
    turtle.forward(steps: 19)
    turtle.right(by: 90)
    turtle.forward(steps: 19)
    turtle.left(by: 90)

    turtle.penUp()
    turtle.backward(steps: 20)
}

func drawfillsquare() {
    drawsquare()
    fill()
}

func top(){
    // drawing  a square on top
    turtle.penUp()
    turtle.forward(steps: 22)
}

func bottom(){
    turtle.penUp()
    turtle.backward(steps: 21)
}

func right(){
    // getting into postion to draw a square to the right
    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 21)
    turtle.left(by: 90)
    turtle.forward(steps: 1)
}

func left() {
    // getting into postion to draw a square to the left
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 21)
    turtle.right(by: 90)
}

func puzzlepiece() {
    // drawing the first bottom square of the puzle piece
    //turtle.drawSelf()
    bottom()
    drawfillsquare()


    // drawing the second row of the puzzle piece
    top()
    drawfillsquare()
    left()
//    turtle.forward(steps: 1)
    drawfillsquare()
    right()
    right()
//    turtle.backward(steps: 1)
    drawfillsquare()
    //turtle.drawSelf()

    // drawing the third row of the puzzle piece
    left()
    top()
    //turtle.drawSelf()
    drawfillsquare()

    // drawing the fourth row of the puzzle peice
    top()
    drawfillsquare()
    left()
//    turtle.forward(steps: 1)
    drawfillsquare()
    right()
    right()
//    turtle.backward(steps: 1)
    drawfillsquare()
    //turtle.drawSelf()

    // drawing the final row to complete the puzzle piece
    left()
    top()
    //turtle.drawSelf()
    drawfillsquare()

    turtle.penUp()
    turtle.backward(steps: 60)

}

func row() {
    // trying to put multiple puzzle pieces in a row
    // try moving it by square sizes instead of steps
    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 6 * squareSize)
    turtle.left(by: 90)
    puzzlepiece()
    //turtle.drawSelf()
}

func column () {
    // trying to get into position to draw another the next row
    turtle.left(by: 90)
    // added 18
    // added another 18
    turtle.forward(steps: 57 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.forward(steps: 5)
//    turtle.drawSelf()
}

canvas.highPerformance=true


let squareSize = 20






// coordinates
turtle.penUp()
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
turtle.left(by: 180)
turtle.forward(steps: 30)
turtle.right(by: 90)
turtle.backward(steps: 3 * squareSize)

//puzzlepiece()





// drawing a row of puzzle pieces using a loop

for _ in 1...13 {

for _ in 1...9 {
    // drawing a puzzle piece, then getting into positon to draw another
    puzzlepiece()
//    turtle.drawSelf()
    row()

}
 column()

}

canvas.highPerformance=false





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
