//
//  UINavigationBar+Extensions.swift
//  Todoey
//
//  Created by Rachel Lee on 8/8/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import SwiftUI
import ChameleonFramework

extension UINavigationBar {
    func setUp(color: UIColor) {
        let contrastColor = ContrastColorOf(color, returnFlat: true)
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.titleTextAttributes = [.foregroundColor: contrastColor]
            appearance.largeTitleTextAttributes = [.foregroundColor: contrastColor]
            appearance.backgroundColor = color
            self.standardAppearance = appearance
            self.scrollEdgeAppearance = appearance
        } else {
            self.barTintColor = color
        }
        self.tintColor = contrastColor
    }
}
