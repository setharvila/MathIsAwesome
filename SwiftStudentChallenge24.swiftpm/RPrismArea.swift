//
//  RPrismArea.swift
//  Math
//
//  Created by Seth Arvila on 2/25/24.
//

import SwiftUI
import SceneKit

struct RPrismArea: View {
    @State var inWidth: Double = 2.0
    @State var inHeight: Double = 3.0
    @State var inDepth: Double = 4.0
    
    let ezscene = EZScene(shapeWidth: 3.0) //creates the scene, camera and viewOptions
    var body: some View {
        VStack{

                Text("Rectangular Prism")
                    .font(.largeTitle)
                    .bold()
                    
                Text("Volume = Width x Height x Depth")
                    .font(.caption)
            Text("This is a 3D object, try to rotate it!")
                .padding()
                
                Spacer()
            
            
            VStack {
                
                SceneView(
                    scene: ezscene.scene,
                    pointOfView: ezscene.camera,
                    options: ezscene.viewOptions
                )

                ZStack {
                    Rectangle()
                        .fill(.ultraThickMaterial)

                    VStack{
                        
                        Text("Volume: \(inWidth*inHeight*inDepth, specifier: "%.2f") units cubed")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding()
                        Text("Width: \(inWidth.formatted(.number)) units")
                        Slider(value: Binding(get: {
                            inWidth
                        }, set: { newVal in
                            inWidth = newVal
                            self.ezscene.createAndPutBoxOnRoot(width: inWidth, height: inHeight, depth: inDepth)
                        }), in: 0.1...5, step: 0.01)
                        
                        
                        Text("Height: \(inHeight.formatted(.number)) units")
                        Slider(value: Binding(get: {
                            inHeight
                        }, set: { newVal in
                            inHeight = newVal
                            self.ezscene.createAndPutBoxOnRoot(width: inWidth, height: inHeight, depth: inDepth)
                        }), in: 0.1...5, step: 0.01)
                        
                        Text("Depth: \(inDepth.formatted(.number)) units")
                        Slider(value: Binding(get: {
                            inDepth
                        }, set: { newVal in
                            inDepth = newVal
                            self.ezscene.createAndPutBoxOnRoot(width: inWidth, height: inHeight, depth: inDepth)
                        }), in: 0.1...5, step: 0.01)
                      
                    
                        
                    }
                    .frame(width: 400)
                    
                }
                .frame(width: 450, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .padding()
                
                

            }
        }
        
    }
}



 
class EZScene {
    let scene: SCNScene
    let camera: SCNNode
    let viewOptions: SceneView.Options

    
    
    init(shapeWidth: Double) {
     
     //create the stuff for SceneView
     scene = SCNScene()
     camera = SCNNode()
     camera.camera = SCNCamera()
     camera.position = SCNVector3(x: 0, y: 0, z: 10)
     
     viewOptions = [
         .allowsCameraControl,
         .autoenablesDefaultLighting,
         .temporalAntialiasingEnabled
     ]
     
        createAndPutBoxOnRoot()
        
     
 }
    func createAndPutBoxOnRoot(width: Double = 2.0, height: Double = 3.0, depth: Double = 4.0) {
            
            //create box geometry
            let box = SCNBox(width: width, height: height, length: depth, chamferRadius: 0.2)
            
            //create material for box geometry
            let material = SCNMaterial()
            material.diffuse.contents = UIColor.systemGreen
            material.lightingModel = .phong
            
            //set the material on the box (array because several materials can be applied)
            box.materials = [material]
            
            //set the box as the geometry of the scenes root node (the only SCNNode in this scene)
            scene.rootNode.geometry = box
            
        }
 
}


#Preview {
    RPrismArea()
}
