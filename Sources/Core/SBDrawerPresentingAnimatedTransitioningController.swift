//
//  SBDrawerPresentingAnimatedTransitioningController.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerPresentingAnimatedTransitioningController: NSObject {
    var presentationController: SBDrawerPresentationController?
}

extension SBDrawerPresentingAnimatedTransitioningController: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.0
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {}
}

#endif
