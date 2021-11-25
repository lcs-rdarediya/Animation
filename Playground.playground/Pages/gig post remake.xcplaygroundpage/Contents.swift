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
// backgorund 

canvas.highPerformance = true


canvas.fillColor = Color(hue: 110,
                         saturation: 54,
                         brightness: 72,
                         alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

canvas.fillColor = Color(hue: 110, saturation: 80, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)
  
// draw the circles

for verticalposition in stride(from:0, through: 400, by: 40){
    
    for horizontalposition in stride(from: 0, through: 400, by: 40){
                
        canvas.drawEllipse(at: Point(x: horizontalposition, y: verticalposition), width: 36, height: 36)

        // green cicles
        if horizontalposition == 0 ||
            horizontalposition == 400 ||
            verticalposition == 0 ||
            verticalposition == 400 ||
            //white cicles
            horizontalposition + verticalposition > 40
        {
            
            canvas.fillColor = Color(hue: 110, saturation: 54, brightness: 72, alpha: 100)

        } else {
            
            canvas.fillColor = .white

        }
        
        canvas.drawEllipse(at: Point(x: horizontalposition, y: verticalposition), width: 36, height: 36)
        
        
        
        
        
    }
    
}
canvas.highPerformance = false





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
