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

// Begin writing your code below (you can remove the examples shown)

//background

canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Limete tower

canvas.fillColor = Color(hue: 20,
                         saturation: 20,
                         brightness: 70,
                         alpha: 100)

//left piller
canvas.drawRectangle(at: Point(x: 160, y: 200), width: 25, height: 260)

//right piller
canvas.drawRectangle(at: Point(x: 210, y: 200), width: 25, height: 260)

//middle holders
canvas.drawRectangle(at: Point(x: 185, y: 225), width: 25, height: 20)
canvas.drawRectangle(at: Point(x: 185, y: 265), width: 25, height: 20)
canvas.drawRectangle(at: Point(x: 185, y: 305), width: 25, height: 20)
canvas.drawRectangle(at: Point(x: 185, y: 345), width: 25, height: 20)

//left balconies
canvas.drawRectangle(at: Point(x: 140, y: 375), width: 20, height: 20)
canvas.drawRectangle(at: Point(x: 130, y: 405), width: 30, height: 20)
canvas.drawRectangle(at: Point(x: 120, y: 435), width: 40, height: 20)

//righ balconies
canvas.drawRectangle(at: Point(x: 235, y: 375), width: 20, height: 20)
canvas.drawRectangle(at: Point(x: 235, y: 405), width: 30, height: 20)
canvas.drawRectangle(at: Point(x: 235, y: 435), width: 40, height: 20)

//antenas
canvas.drawRectangle(at: Point(x: 175, y: 460), width: 15, height: 50)
canvas.drawRectangle(at: Point(x: 205, y: 460), width: 15, height: 50)
canvas.drawRectangle(at: Point(x: 187, y: 475), width: 20, height: 100)

//STARS

extension Canvas {
    func drawyellowstars(xPosition: Int, yPosition: Int) {
        var star: [Point] = []
        star.append(Point(x: xPosition + 5, y: yPosition + 0)) //A
        star.append(Point(x: xPosition + 25, y: yPosition + 50)) //B
        star.append(Point(x: xPosition + 45, y: yPosition + 0)) //C
        star.append(Point(x: xPosition + 0, y: yPosition + 35)) //D
        star.append(Point(x: xPosition + 50, y: yPosition + 35)) //E
        canvas.drawCustomShape(with: star)
    }
}
for xPosition in stride(from: 0, through: 50, by: 50){
    for yPosition in stride(from: 200, through: 550, by: 50){
    
    
    canvas.fillColor = .yellow
    canvas.drawyellowstars(xPosition: xPosition, yPosition: yPosition)
    
    
}
}
for xPosition in stride(from: 300, through: 350, by: 50){
    for yPosition in stride(from: 200, through: 550, by: 50){
    
    
    canvas.fillColor = .yellow
    canvas.drawyellowstars(xPosition: xPosition, yPosition: yPosition)

}
}

p.goToOrigin()

canvas.textColor = Color(hue: 200,
                         saturation: 20,
                         brightness: 70,
                         alpha: 100)
canvas.drawText(message: "Fally Ipupa", at: Point(x: 50, y: 140), size: 40, kerning: 0)
canvas.drawText(message: "A.K.A Aigle", at: Point(x: 275, y: 140), size: 20, kerning: 0)
canvas.drawText(message: "18", at: Point(x: 25, y: 50), size: 20, kerning: 0)
canvas.drawText(message: "april", at: Point(x: 19, y: 25), size: 20, kerning: 0)
canvas.drawText(message: "2020", at: Point(x: 15, y: 0), size: 23, kerning: 0)
canvas.drawText(message: "Stade des martyrs", at: Point(x: 220, y: 50), size: 20, kerning: 0)
canvas.drawText(message: "Kinshasa", at: Point(x: 260, y: 25), size: 20, kerning: 0)




// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)
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
