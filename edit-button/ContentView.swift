//
//  ContentView.swift
//  edit-button
//
//  Created by user on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(1...10, id: \.self) {
                        index in
                        Text("List Content \(index)")
                        
                        }
                    .onMove(perform: {indices, newOffset in
//                        To do when list changes
                        })
                .onDelete(perform: {indexSet in
//                    Todo when list item deleted
                })
            }
            .navigationTitle("Home")
            .toolbar(content: {
                
                EditButton()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
