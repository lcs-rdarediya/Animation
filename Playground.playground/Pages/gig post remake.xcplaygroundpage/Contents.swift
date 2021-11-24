//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import OpenGL

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
canvas.translate(to: Point(x: 0,
                           y: 0))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//making a loop

canvas.highPerformance = true

for someValue in stride(from: 0, through: 600, by: 1){
let currentcolor = Color(hue: 120 ,
                        saturation: 120,
                        brightness: someValue,
                        alpha: 100)
    
    canvas.lineColor = currentcolor
    
canvas.drawLine(from: Point(x: 0, y: someValue), to: Point(x: 600, y: someValue))
    
    
    
}
canvas.highPerformance = false

//making the cercles
p.goToOrigin()


canvas.drawEllipse(at: Point(x: 200, y: 500), width: 15, height: 15, borderWidth: 4)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 60, height: 60, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 110, height: 110, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 160, height: 160, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 210, height: 210, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 310, height: 310, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 210, height: 210, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 260, height: 260, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 310, height: 310, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 400, height: 400, borderWidth: 1)
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
