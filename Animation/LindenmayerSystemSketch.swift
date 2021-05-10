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
        
//        // Load L-system from JSONFile
//                var basicTree = Visualizer(fromJSONFile: "gordon-basic-branching-tree",
//                                           drawingOn: self.canvas)
                
                
        var berryBush = Visualizer(fromJSONFile: "aidan-berry-bush",
                                    drawingOn: canvas)
        var tree = Visualizer(fromJSONFile: "gordon-basic-branching-tree",
                                    drawingOn: canvas)
        var tree2 = Visualizer(fromJSONFile: "gordon-short-branching-tree",
                                    drawingOn: canvas)
        var tree3 = Visualizer(fromJSONFile: "sihan-tree",
                                    drawingOn: canvas)



        berryBush.render()
        tree.render()
        tree2.render()
        tree3.render()

    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Nothing is being animated, so nothing needed here
        
    }
    
}
