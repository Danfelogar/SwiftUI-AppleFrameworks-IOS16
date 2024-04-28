//
//  FrameworkGridViewModal.swift
//  SwiftUI-AppleFrameworks-IOS16
//
//  Created by Daniel Felipe on 15/01/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
        
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}

