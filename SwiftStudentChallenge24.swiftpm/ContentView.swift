import SwiftUI

struct ContentView: View {
    var body: some View {
        
            NavigationStack{
               
                    ScrollView{
                        Spacer()
                            .frame(height: 100)
                    
                        VStack{
                            Text("Math is Awesome!")
                                .font(.largeTitle)
                                .bold()
                            
                            
                            Text("That isn't how everyone thinks, but every single thing that we interact with involves math. In order to make the iPad you are reading this on, the engineers at Apple needed to do a lot of math to make it work. The room you might be in right now is filled with math, from big things like desiging the structure to not fall, to the little things like the diameter of the wires running electrical signals all around you. Math is all around us!")
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("We are going to take a look at two properties of shapes. Area is the measure of all of the space within a shape. Volume is the amount of displacement from a shape. To begin, choose the shape that you want to learn about from below!")
                                .multilineTextAlignment(.center)
                                .padding()
                            
                        }
                        .frame(width: 600)
                        
                        
                            
                    
                        
                        VStack{
                            NavigationLink(destination: SquareArea()) {
                                LessonButton(mySymbol: lessons[0].symbol, lessonTitle:lessons[0].title , lessonDescription: lessons[0].description)
                            }
                                NavigationLink(destination: RectArea()) {
                                    LessonButton(mySymbol: lessons[1].symbol, lessonTitle:lessons[1].title , lessonDescription: lessons[1].description)
                            }
                            NavigationLink(destination: CircleArea()) {
                                LessonButton(mySymbol: lessons[2].symbol, lessonTitle:lessons[2].title , lessonDescription: lessons[2].description)
                            }
                            NavigationLink(destination: RPrismArea()) {
                                LessonButton(mySymbol: lessons[3].symbol, lessonTitle:lessons[3].title , lessonDescription: lessons[3].description)
                            }
                            NavigationLink(destination: Cylinder()) {
                                LessonButton(mySymbol: lessons[4].symbol, lessonTitle:lessons[4].title , lessonDescription: lessons[4].description)
                            }
                        }
                        
                        .navigationSplitViewStyle(.prominentDetail)
                        
                    }
                }
                
                
                
                
                
                
            
        
    }
}





