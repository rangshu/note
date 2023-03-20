//
//  MainViewModel.swift
//  Note
//
//  Created by SooRin Kim on 2023/03/19.
//

import Foundation

class MainViewModel: ObservableObject {
    lazy var writeViewModel: WriteViewModel = {
        return WriteViewModel()
    }()
    
    init() {

    }
}
