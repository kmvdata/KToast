//
//  KToastView.swift
//  KToast
//
//  Created by kermit on 2022/3/9.
//

import UIKit

class KToastView : UIView {
    
    let label = UILabel()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init(text: String) {
        super.init(frame: CGRect.zero)
        self.label.text = text
        
    }
    
}

