//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks-IOS16
//
//  Created by Daniel Felipe on 15/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
//        NavigationView {
        NavigationStack {
                List {
                    ForEach(MockData.frameworks, id: \.id) { framework in
//                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
//                            FrameworkTitleView(framework: framework)
//                        }
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
                .navigationTitle("🍏 Frameworks")
                .navigationDestination(for: Framework.self){ framework in
                    FrameworkDetailView(framework: framework)
                }
//                .sheet(isPresented: $viewModel.isShowingDetailView) {
//                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
//                }
        }
//        .toolbarBackground(Color.navigationBar, for: .navigationBar)
//        .toolbarBackground(.visible, for: .navigationBar)
//        .toolbarColorScheme(colorScheme, for: .navigationBar)
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
            
    }
}
