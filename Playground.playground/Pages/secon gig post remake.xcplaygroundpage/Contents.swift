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
import Darwin

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

//begin writing my code
canvas.highPerformance = true

// triangles loop
extension Canvas {
    func drawtriangle(xPosition: Double, yPosition: Double) {
        var trianglevertices: [Point] = []
        trianglevertices.append(Point(x: xPosition + 0, y: yPosition + 0)) //A
        trianglevertices.append(Point(x: xPosition + 44.44, y: yPosition + 0)) //B
        trianglevertices.append(Point(x: xPosition + 44.44, y: yPosition + 44.44)) //C
        
        canvas.drawCustomShape(with: trianglevertices)
    }
}




canvas.fillColor = Color(hue: 25,
                         saturation: 100,
                         brightness: 90,
                         alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

canvas.textColor = Color(hue: 200,
                         saturation: 0,
                         brightness: 80,
                         alpha: 100)

// text

canvas.drawText(message: "talking heads", at: Point(x: 20, y: 139), size: 43, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 30), size: 9, kerning: 0)
canvas.drawText(message: "at cgb and omfug", at: Point(x: 150, y: 30), size: 9, kerning: 0)
canvas.drawText(message: "also appearing", at: Point(x: 280, y: 30), size: 9, kerning: 0)

canvas.drawText(message: "september 12, 13, 14 1975", at: Point(x: 20, y: 20), size: 9, kerning: 0)

canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 20), size: 9, kerning: 0)

canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 280, y: 20), size: 9, kerning: 0)



// triangles

canvas.fillColor = Color(hue: 200,
                         saturation: 0,
                         brightness: 80,
                         alpha: 100)


for Xposition in stride(from:0, through: 600, by: 44.44){
    
    for Yposition in stride(from: 200, through: 600, by: 44.44){
        
        
        
        
        if//white triangles
            Yposition - Xposition >= 244
        {
            
            canvas.fillColor = Color(hue: 200,
                                     saturation: 0,
                                     brightness: 80,
                                     alpha: 100)
            
        } else {
            
            canvas.fillColor = .yellow
            
        }
        canvas.drawtriangle(xPosition: Xposition, yPosition: Yposition)
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

