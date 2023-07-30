//
//  DetailView.swift
//  MyNews
//
//  Created by Elfana Anamta Chatya on 30/07/23.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://elfaael.vercel.app")
    }
}

