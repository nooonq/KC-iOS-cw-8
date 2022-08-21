//
//  ContentView.swift
//  MyDiary
//
//  Created by NOUNI on 8/20/22.
//

import SwiftUI

struct ContentView: View {
    let MyColors  = [
        Color.green.opacity(0.5),
        Color.pink.opacity(0.5),
        Color.orange.opacity(0.5),
        Color.indigo.opacity(0.5) ]
    @State var Selected : Color = Color.gray
    @State var Note = ""
    var body: some View {
        NavigationView{
            
            
           
            ZStack {
                Color.yellow.opacity(0.2).ignoresSafeArea()
                
                VStack {
                    
                    
                    
                    
                    
                    
                  Spacer()
                    
                    Text("Choose your favorite color")
                        .frame(width: 380, height: 100)
                        .font(Font.custom("Quicksand-SemiBold", size: 26))
                        
                        
                        
                    
                    
                    HStack {
                        ForEach(MyColors, id: \.self){ color in
                            Button(action: {}) {
                            Circle()
                                .fill(color)
                                .frame(width: 78, height: 90, alignment: .center)
                                .onTapGesture {
                                    Selected = color
                                }
                            
                        }.hoverEffect(.highlight)
                        }
                    }
                    
                    Spacer()
                    Text("What do you want to write?")
                        .font(Font.custom("Quicksand-Medium", size: 20))
                        .padding()
                    
                    
                        TextField("Your Note" , text: $Note)
                        .font(Font.custom("Quicksand-Light", size: 15))
                            .padding()
                            .background(.gray.opacity(0.3))
                            .cornerRadius(20)
                            .padding()
                        
                    
                    NavigationLink(destination: SecondView(myc: Selected, myn: Note)) {
                            Text("save")
                            .font(Font.custom("Quicksand-Regular", size: 30))
                                .foregroundColor(.white )
                                .frame(width: 120, height: 30)
                                .padding()
                                .background(.teal)
                                .cornerRadius(30)
                                .padding()
                            
                        }
                   
                   

                        
                }.padding()
                    .navigationTitle("MY DIARY")
                    
                    
                    
            }
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
