//
//  ContentView.swift
//  myword.ios
//
//  Created by Lucas Santana on 26/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            if true {
                HomeView()
            }else {
                LoginView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
