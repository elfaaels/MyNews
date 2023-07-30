//
//  ContentView.swift
//  MyNews
//
//  Created by Elfana Anamta Chatya on 22/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    HStack {
                        Text(String(post.points))
                            .padding(.all, 6)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("My News").padding(10)
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct NewsView: View {
    var post: Post
    
    var body: some View {
        Text("My News today \(post.title)")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

