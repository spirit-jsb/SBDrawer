//
//  SBDrawerPresentingInteractiveTransition.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerPresentingInteractiveTransition: UIPercentDrivenInteractiveTransition {
    private(set) var isInteracting: Bool = false

    func openDrawerWithPanGesture(_ panGesture: UIPanGestureRecognizer) {
        switch panGesture.state {
            case .began:
                panGesture.setTranslation(CGPoint.zero, in: panGesture.view)
            case .changed:
                break
            case .ended, .cancelled:
                break
            default:
                break
        }
    }
}

#endif
