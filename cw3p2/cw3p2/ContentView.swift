//
//  ContentView.swift
//  cw3p2
//
//  Created by Hussain Almousawi on 9/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var counter1 = 0
    @State var counter2 = 0
    var body: some View {
        VStack {
        
            ExtractedView(text: "استغفر الله العظيم", counter: $counter)
            ExtractedView(text: "سبحان الله و بحمده", counter: $counter1)
            ExtractedView(text: "سبحان الله العظيم", counter: $counter2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var text: String
    @Binding var counter: Int
    var body: some View {
        HStack {
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
            Text("\(counter)")
                .foregroundColor(.white)
                .font(.title)
                .frame(width: 100, height: 100)
                .background(Color.red)
                .clipShape(Circle())
                .onTapGesture {
                    counter = (counter + 1)
                }
        }
        .padding()
    }
}
