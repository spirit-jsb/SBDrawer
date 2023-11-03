//
//  SBDrawerPresentationController.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerPresentationController: UIPresentationController {
    let sourceViewController: UIViewController

    let direction: SBDrawer.Direction
    let animationConfig: SBDrawer.AnimationConfiguration

    var dismissUsingPanGestureHandler: ((UIPanGestureRecognizer) -> Void)?

    lazy var dimmingView = SBDrawerDimmingView()

    override var frameOfPresentedViewInContainerView: CGRect {
        guard let containerView = self.containerView else {
            return CGRect.zero
        }

        let containerViewBounds = containerView.bounds

        let width: CGFloat = containerViewBounds.width * self.animationConfig.distanceRatio
        let height: CGFloat = containerViewBounds.height

        let x: CGFloat
        let y: CGFloat

        switch self.direction {
            case .left:
                x = 0.0
                y = 0.0
            case .right:
                x = containerViewBounds.width - width
                y = 0.0
        }

        return CGRect(x: x, y: y, width: width, height: height)
    }

    init(
        presentedViewController: UIViewController,
        presenting presentingViewController: UIViewController?,
        source sourceViewController: UIViewController,
        direction: SBDrawer.Direction,
        animationConfig: SBDrawer.AnimationConfiguration

    ) {
        self.sourceViewController = sourceViewController

        self.direction = direction
        self.animationConfig = animationConfig

        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)

        self.dimmingView.tapGestureHandler = { [weak self] _ in
            guard let strongSelf = self else {
                return
            }

            strongSelf.presentedViewController.dismiss(animated: true, completion: nil)
        }

        self.dimmingView.panGestureHandler = { [weak self] panGesture in
            guard let strongSelf = self else {
                return
            }

            strongSelf.dismissUsingPanGestureHandler?(panGesture)
        }
    }
}

#endif
