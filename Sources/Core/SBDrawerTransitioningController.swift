//
//  SBDrawerTransitioningController.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerTransitioningController: NSObject {
    let direction: SBDrawer.Direction
    let animationConfig: SBDrawer.AnimationConfiguration

    var presentationController: SBDrawerPresentationController?

    init(direction: SBDrawer.Direction, animationConfig: SBDrawer.AnimationConfiguration) {
        self.direction = direction
        self.animationConfig = animationConfig
    }
}

extension SBDrawerTransitioningController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animatedTransitioningController = SBDrawerPresentingAnimatedTransitioningController()
        animatedTransitioningController.presentationController = self.presentationController

        return animatedTransitioningController
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animatedTransitioningController = SBDrawerDismissingAnimatedTransitioningController()
        animatedTransitioningController.presentationController = self.presentationController

        return animatedTransitioningController
    }

    func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return nil
    }

    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return nil
    }

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let presentationController = SBDrawerPresentationController(
            presentedViewController: presented,
            presenting: presenting,
            source: source,
            direction: self.direction,
            animationConfig: self.animationConfig
        )

        self.presentationController = presentationController

        return presentationController
    }
}

#endif
