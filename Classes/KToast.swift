//
//  KToast.swift
//  KToast
//
//  Created by kermit on 2022/3/9.
//

import UIKit

public class KToast {
    
    public init() {
    }
    
    class func heightOfString(font: UIFont, string:String, constrainedToWidth width: CGFloat) -> CGFloat {
        return NSString(string: string).boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)),
                                                     options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                                     attributes: [NSAttributedStringKey.font: font],
                                                     context: nil).size.height
    }
    
    class func getTopViewController(base: UIViewController? = UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow}?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
        }
        
        if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)
        }
        
        if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        
        return base
    }
    
    public static func showToast(text:String, textColor: UIColor = .white, textFont:UIFont = UIFont.systemFont(ofSize: 18.0), backgroundColor: UIColor = .black.withAlphaComponent(0.618)) {
        guard let tvc = getTopViewController() else {
            return
        }
        
        let lableWidth:CGFloat = tvc.view.frame.width * 0.8
        let labelHeight = heightOfString(font: textFont, string: text, constrainedToWidth: lableWidth) + 16
        
        let labelX:CGFloat = (tvc.view.frame.width - lableWidth) / 2
        
        let labelFrame = CGRect(x: labelX, y: -labelHeight, width: lableWidth, height: labelHeight)
        
        let tipLabel = UILabel.init(frame: labelFrame)
        tipLabel.numberOfLines = 0
        tipLabel.lineBreakMode = .byWordWrapping
        tipLabel.text = text
        tipLabel.alpha = 0.0
        tipLabel.textAlignment = .center
        tipLabel.backgroundColor = backgroundColor
        tipLabel.textColor = textColor
        
        tipLabel.layer.masksToBounds = true
        tipLabel.layer.cornerRadius = 5
        
        tvc.view.addSubview(tipLabel)
        tvc.view.bringSubview(toFront: tipLabel)
        
        let toLabelY:CGFloat = labelHeight * 1.5
        let animatorIn = UIViewPropertyAnimator(duration: 0.2, curve: .easeOut) {
            tipLabel.frame.origin.y = toLabelY
            tipLabel.alpha = 1.0
        }
        
        let animatorOut = UIViewPropertyAnimator(duration: 1.0, curve: .easeOut) {
            tipLabel.frame.origin.y = -tipLabel.frame.height
            tipLabel.alpha = 0.0
        }
        
        animatorIn.addCompletion {_ in
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: 2)
                DispatchQueue.main.async {
                    animatorOut.startAnimation()
                }
            }
        }
        
        animatorOut.addCompletion { _ in
            tipLabel.removeFromSuperview()
        }
        
        animatorIn.startAnimation()
    }
}
