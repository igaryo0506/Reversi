//
//  ContentView.swift
//  Reversi
//
//  Created by 五十嵐諒 on 2022/08/21.
//

import SwiftUI

struct ContentView: View {
    let layout:[GridItem] = Array(repeating: .init(.fixed(36), spacing: 0), count: 9)
    
    
    var body: some View {
        BoardView()
        
        LazyVGrid(columns: layout){
            ForEach(0 ..< 9 , id: \.self){ v in
                LazyHGrid(rows: layout){
                    ForEach(0 ..< 9 , id: \.self){ h in
                        ZStack{
                            Rectangle()
                                .fill(.green)
                                .border(.black,width: 1)
                            Circle()
                                .padding(5)
                        }
                        .onTapGesture {
                            print(h,v)
                        }
                    }
                }
            }
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
