//
//  ContentView.swift
//  CW5-2
//
//  Created by Shhooda on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
  @State var groceryItems = ["gum","doritos","indomie","kinder"]
    @State var newItem = ""
    
    var body: some View {
        
       VStack{
        List(groceryItems, id:\.self){ i in
            HStack{
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(i.capitalized)
                    .font(.title)
                

            }
            
        }
        
        // 🍌 add banana :D!
            
            HStack{
                Button{
                    groceryItems.append(newItem)
                
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 70, height: 70)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(20)
                        .padding(10)
                        .font(.largeTitle)
                }
                TextField("New Items", text: $newItem)
                    .font(.title)
                
              Button{
                  //حاولت ابحث عن البونص بس ما عرفت 😫      
                    groceryItems.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .frame(width: 70, height: 70)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(20)
                        .padding(10)
                        .font(.largeTitle)
                    
            }
                
        }
        
            EditButton()
                .font(.title)
                
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
