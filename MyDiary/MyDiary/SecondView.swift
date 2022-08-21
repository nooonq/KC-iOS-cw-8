//
//  SecondView.swift
//  MyDiary
//
//  Created by NOUNI on 8/20/22.
//

import SwiftUI

struct SecondView: View {
    let myc : Color
    let myn : String
    
    var body: some View {
    ZStack{
            myc.ignoresSafeArea()
            VStack{
                
                Text(myn)
                    .font(Font.custom("Quicksand-Regular", size: 25))
                
                
            }
            
            
            
            
        }
        
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myc: Color.gray, myn: "hiiiii")
    }
}
