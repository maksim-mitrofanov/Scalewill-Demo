//
//  DetailedScreen.swift
//  Demo
//
//  Created by Максим Митрофанов on 05.10.2023.
//

import SwiftUI

struct DetailedScreen: View {
    let model: DataModel
    
    var body: some View {
        VStack {
            Spacer()
            priceTitle
            Spacer()
            keywordsView
                .padding()
        }
        .navigationTitle(model.name)
    }
    
    private var keywordsView: some View {
        VStack(spacing: 14) {
            ForEach(model.keywords, id: \.self) { keyword in
                Text(keyword)
                    .bold()
            }
        }
        .padding()
        .padding(.horizontal)
        .background { keywordsViewBackground }
    }
    
    private var keywordsViewBackground: some View {
        ZStack {
            Color.themeColor.opacity(0.2)
            
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(lineWidth: 2)
                .foregroundColor(Color.themeColor.opacity(0.3))
        }
        .cornerRadius(16)
    }
    
    private var priceTitle: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Price:")
                .font(Font.system(size: 12))
            
            Text(model.price.description + "$")
                .font(Font.system(size: 24))
        }
    }
}

#Preview {
    NavigationView {
        DetailedScreen(model: .template1)
    }
}
