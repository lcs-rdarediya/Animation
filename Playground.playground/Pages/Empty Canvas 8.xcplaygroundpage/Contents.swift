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



// Show a grid
canvas.drawAxes(withScale: true, by: 25, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// backgorund

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

//draw right ear

canvas.drawEllipse(at: Point(x: 270, y: 450), width: 45, height: 45)


//draw left ear

canvas.drawEllipse(at: Point(x: 130, y: 450), width: 45, height: 45)

// draw the body
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 200, y: 265), width: 240, height: 260)

//draw the feet
canvas.fillColor = .black

canvas.drawEllipse(at: Point(x: 150, y: 150), width: 40, height: 50)

canvas.drawEllipse(at: Point(x: 250, y: 150), width: 40, height: 50)

//draw head

canvas.fillColor = .white

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 200, height: 140)

// left arm

canvas.fillColor = .black

canvas.drawEllipse(at: Point(x: 100, y: 275), width: 40, height: 120)

//right arm


canvas.drawEllipse(at: Point(x: 300, y: 275), width: 40, height: 120)

// face

canvas.drawEllipse(at: Point(x: 160, y: 420), width: 30, height: 30)

canvas.drawEllipse(at: Point(x: 240, y: 420), width: 30, height: 30)

canvas.drawEllipse(at: Point(x: 200, y: 380), width: 20, height: 30)

canvas.drawEllipse(at: Point(x: 200, y: 350), width: 40, height: 4)

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
