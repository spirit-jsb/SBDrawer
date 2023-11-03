//
//  SBDrawerDismissingAnimatedTransitioningController.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerDismissingAnimatedTransitioningController: NSObject {
    var presentationController: SBDrawerPresentationController?
}

extension SBDrawerDismissingAnimatedTransitioningController: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        0.0
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {}
}

#endif
