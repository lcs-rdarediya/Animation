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




// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//add the abilty to draw atilted rectangle to thecanvas structure
extension Canvas {
    func drawtiltedrectangle(xPosition: Int, yPosition: Int) {
        var rectanglevertices: [Point] = []
        rectanglevertices.append(Point(x: xPosition + 0, y: yPosition + 30)) //A
        rectanglevertices.append(Point(x: xPosition + 20, y: yPosition + 50)) //B
        rectanglevertices.append(Point(x: xPosition + 50, y: yPosition + 20)) //C
        rectanglevertices.append(Point(x: xPosition + 30, y: yPosition + 0)) //D
        canvas.drawCustomShape(with: rectanglevertices)
    }
}






//let fill color
canvas.highPerformance = true

canvas.drawShapesWithFill = true
canvas.fillColor = .black

//custom shapes with absolute coordinates
//1. make a list of the vertices
var triangleVertices: [Point] = [] //empty list of point instances
triangleVertices.append(Point(x: 0, y: 50))
triangleVertices.append(Point(x: 50, y: 50))
triangleVertices.append(Point(x: 25, y: 60))
// begin wrting your code below


for xPosition in stride(from: 0, through: 350, by: 50){
    
    for yPosition in stride(from: 0, through: 550, by: 50){

//draw anchor

canvas.fillColor = .red
canvas.drawEllipse(at: Point(x: xPosition, y: yPosition), width: 5, height: 5)

        
        //draw tilted rectangles
        canvas.fillColor = .blue
        canvas.drawtiltedrectangle(xPosition: xPosition, yPosition: yPosition)
        
    }
}

//draw one more tilted rectangle

canvas.fillColor = .yellow

canvas.drawtiltedrectangle(xPosition: 200, yPosition: 220)

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
