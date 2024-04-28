//
//  FrameworkDetailView.swift
//  SwiftUI-AppleFrameworks-IOS16
//
//  Created by Daniel Felipe on 15/01/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    //@Binding var isShowingDetailView: Bool
    @State private var isShowingSafariVew = false
    
    var body: some View {
        VStack(){
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariVew = true
            } label: {
//                AFButton(title:"Learn More")
                Label("Learn More",systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundColor(.yellow)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariVew, content: {
            SafariView(url: URL( string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
//                            isShowingDetailView: .constant(false)
        
            .preferredColorScheme(.dark)
    }
}
