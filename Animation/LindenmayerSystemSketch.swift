import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LindenmayerSystemSketch: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1000, height: 600)
        
        // Enable faster rendering
        canvas.highPerformance = true
        
        // Create scene before trees
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.blue
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        canvas.fillColor = Color.green
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height / 3)
        canvas.drawEllipse(at: Point(x: 0, y: 200), width: 900, height: 300)
        canvas.drawEllipse(at: Point(x: 800, y: 200), width: 900, height: 300)
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: 1000, y: 600), width: 200, height: 200)

        canvas.fillColor = Color.red

        
        // Berry Bush
        var berryBush = Visualizer(fromJSONFile: "aidan-berry-bush",
                                    drawingOn: canvas)
        berryBush.initialPosition = Point(x: 100, y: 125)
        berryBush.render()

        // Berry Bush 2
        
        var berryBush2 = Visualizer(fromJSONFile: "aidan-berry-bush",
                                    drawingOn: canvas)
        berryBush2.initialPosition = Point(x: 300, y: 80)
        berryBush2.render()

        // Tree
        var tree = Visualizer(fromJSONFile: "gordon-basic-branching-tree",
                                    drawingOn: canvas)
        tree.initialPosition = Point(x: 500, y: 80)
        tree.render()
        
        // Tree 2
        var tree2 = Visualizer(fromJSONFile: "gordon-basic-branching-tree",
                                    drawingOn: canvas)
        tree2.initialPosition = Point(x: 550, y: 80)
        tree2.render()

        // Short branching tree
        var shortTree = Visualizer(fromJSONFile: "gordon-short-branching-tree",
                                    drawingOn: canvas)
        shortTree.initialPosition = Point(x: 550, y: 300)
        shortTree.render()
        
        // Short branching tree2
        var shortTree2 = Visualizer(fromJSONFile: "gordon-short-branching-tree",
                                    drawingOn: canvas)
        shortTree2.initialPosition = Point(x: 590, y: 280)
        shortTree2.render()
        
        // Short branching tree3
        var shortTree3 = Visualizer(fromJSONFile: "gordon-short-branching-tree",
                                    drawingOn: canvas)
        shortTree3.initialPosition = Point(x: 570, y: 260)
        shortTree3.render()


        
        // Tall tree
        var tallTree = Visualizer(fromJSONFile: "sihan-tree",
                                    drawingOn: canvas)
        tallTree.initialPosition = Point(x: 700, y: 50)
        tallTree.render()
        
        // Tall tree2
        var tallTree2 = Visualizer(fromJSONFile: "sihan-tree",
                                    drawingOn: canvas)
        tallTree2.initialPosition = Point(x: 820, y: 80)
        tallTree2.render()


    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
