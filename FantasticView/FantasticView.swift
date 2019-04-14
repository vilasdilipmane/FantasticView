//
//  FantasticView.swift
//  FantasticView
//
//  Created by Vilas on 14/04/19.
//  Copyright © 2019 trivenibai. All rights reserved.
//

import Foundation
import UIKit

class FantasticView : UIView {
    
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0

override init(frame: CGRect) {
    super.init(frame: frame)
    
    let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
        UIView.animate(withDuration: 2.0) {
            self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
            self.colorCounter+=1
        }
    }
    
    scheduledColorChanged.fire()
}

required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    // You don't need to implement this
}
}
