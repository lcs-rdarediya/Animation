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


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

canvas.fillColor = Color(hue: 340,
                         saturation: 82,
                         brightness: 88,
                         alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

canvas.textColor = Color(hue: 200,
                         saturation: 0,
                         brightness: 80,
                         alpha: 100)
//Title
canvas.drawText(message: "the runaways",
at: Point(x: 12,y: 409),size: 55)

//Details Group 1
canvas.textColor = .black

canvas.drawText(message: "friday",
at: Point(x: 14,y: 549),size: 10)

canvas.drawText(message: "august 19 1997",
at: Point(x: 14,y: 537),size: 10)

canvas.drawText(message: "tickets $4.50",
at: Point(x: 14,y: 525),size: 10)

//Group 2

canvas.drawText(message: "with",
at: Point(x: 120,y: 549),size: 10)

canvas.drawText(message: "special guests",
at: Point(x: 120,y: 537),size: 10)

canvas.drawText(message: "wolfgang",
at: Point(x: 120,y: 525),size: 10)

//Group 3

canvas.drawText(message: "at ben h. lewis hall",
at: Point(x: 290,y: 549),size: 10)

canvas.drawText(message: "3443 orange st.",
at: Point(x: 290,y: 537),size: 10)

canvas.drawText(message: "riverside, california",
at: Point(x: 290,y: 525),size: 10)


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
