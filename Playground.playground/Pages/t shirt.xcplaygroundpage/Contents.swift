/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
p.penColor = .black

// build the 1st square
func square1()  {
    p.drawTo(dx: 200, dy: 0)
    p.drawTo(dx: 0, dy: -200)
    p.drawTo(dx: -200, dy: 0)
    p.drawTo(dx: 0, dy: 200)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 160, dy: 0)
    p.drawTo(dx: 0, dy: -160)
    p.drawTo(dx: -160, dy: 0)
    p.drawTo(dx: 0, dy: 160)
    p.goto(dx: 20, dy:-20)
    p.drawTo(dx: 120, dy: 0)
    p.drawTo(dx: 0, dy: -120)
    p.drawTo(dx: -120, dy: 0)
    p.drawTo(dx: 0, dy: 120)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 80, dy: 0)
    p.drawTo(dx: 0, dy: -80)
    p.drawTo(dx: -80, dy: 0)
    p.drawTo(dx: 0, dy: 80)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 40, dy: 0)
    p.drawTo(dx: 0, dy: -40)
    p.drawTo(dx: -40, dy: 0)
    p.drawTo(dx: 0, dy: 40)
    p.goto(dx: 20, dy: -20)
    p.goto(dx: 80, dy: 0)
    canvas.fillColor = .black
    canvas.drawRectangle(at: Point(x: 0, y:0), width: 20, height: 100)
    canvas.drawRectangle(at: Point(x: -180, y:80), width: 180, height: 20)
    canvas.drawRectangle(at: Point(x: -180, y:0), width: 20, height: 100)
    canvas.drawRectangle(at: Point(x: -160, y:-80), width: 20, height: 80)
    canvas.drawRectangle(at: Point(x: -160, y:-80), width: 160, height: 20)
    canvas.drawRectangle(at: Point(x: -20, y:-80), width: 20, height: 80)
    canvas.drawRectangle(at: Point(x: -40, y:0), width: 20, height: 60)
    canvas.drawRectangle(at: Point(x: -140, y:40), width: 120, height: 20)
    canvas.drawRectangle(at: Point(x: -140, y:0), width: 20, height: 60)

    canvas.drawRectangle(at: Point(x: -120, y:-40), width: 20, height: 40)
    canvas.drawRectangle(at: Point(x: -100, y:-40), width: 60, height: 20)
    canvas.drawRectangle(at: Point(x: -60, y:-40), width: 20, height: 40)
    canvas.drawRectangle(at: Point(x: -100, y:0), width: 40, height: 20)
    p.goToOrigin()
    p.goto(dx: -160, dy: 80)
    p.drawTo(dx: 200, dy: 0)
}

// build the 2nd square

func square2() {
    p.drawTo(dx: 200, dy: 0)
    p.drawTo(dx: 0, dy: -200)
    p.drawTo(dx: -200, dy: 0)
    p.drawTo(dx: 0, dy: 200)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 160, dy: 0)
    p.drawTo(dx: 0, dy: -160)
    p.drawTo(dx: -160, dy: 0)
    p.drawTo(dx: 0, dy: 160)
    p.goto(dx: 20, dy:-20)
    p.drawTo(dx: 120, dy: 0)
    p.drawTo(dx: 0, dy: -120)
    p.drawTo(dx: -120, dy: 0)
    p.drawTo(dx: 0, dy: 120)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 80, dy: 0)
    p.drawTo(dx: 0, dy: -80)
    p.drawTo(dx: -80, dy: 0)
    p.drawTo(dx: 0, dy: 80)
    p.goto(dx: 20, dy: -20)
    p.drawTo(dx: 40, dy: 0)
    p.drawTo(dx: 0, dy: -40)
    p.drawTo(dx: -40, dy: 0)
    p.drawTo(dx: 0, dy: 40)
    p.goto(dx: 100, dy: -120)
    canvas.fillColor = .black
    canvas.drawRectangle(at: Point(x: 0, y:0), width: 20, height: 100)
    canvas.drawRectangle(at: Point(x: -180, y:0), width: 200, height: 20)
    canvas.drawRectangle(at: Point(x: -180, y:0), width: 20, height: 100)
    canvas.drawRectangle(at: Point(x: -20, y:100), width: 20, height: 80)
    canvas.drawRectangle(at: Point(x: -20, y:160), width: -140, height: 20)
    canvas.drawRectangle(at: Point(x: -160, y:160), width: 20, height: -60)
    canvas.drawRectangle(at:Point(x:-40,y:40),width: 20, height: 60)
    canvas.drawRectangle(at: Point(x: -40, y:40), width: -100, height: 20)
    canvas.drawRectangle(at: Point(x: -140, y:40), width: 20, height: 60)
    canvas.drawRectangle(at: Point(x: -60, y:100), width: 20, height: 40)
    canvas.drawRectangle(at: Point(x: -60, y:120), width: -60, height: 20)
    canvas.drawRectangle(at: Point(x: -120, y:100), width: 20, height: 40)
    canvas.drawRectangle(at: Point(x: -100, y:80), width: 40, height: 20)
}




// final scripts to build

p.goto(dx: -160, dy: 180)
square2()
p.goToOrigin()
p.goto(dx: -160, dy: -20)
square2()
p.goToOrigin()
p.goto(dx: 40, dy: 180)
square1()
p.goToOrigin()
p.goto(dx: 40, dy: -20)
square1()










//: [Previous](@previous) / [Next](@next)

//: [Previous](@previous) / [Next](@next)

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
