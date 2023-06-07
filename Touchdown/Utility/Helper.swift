//
//  Helper.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 06/06/2023.
//

import Foundation
import SwiftUI

func getSafeAreaTop() -> CGFloat? {

    let keyWindow = UIApplication.shared.connectedScenes
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first

    return (keyWindow?.safeAreaInsets.top)!
}
