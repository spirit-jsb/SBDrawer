//
//  SBDrawerDimmingView.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

class SBDrawerDimmingView: UIView {
    var tapGestureHandler: ((UITapGestureRecognizer) -> Void)?
    var panGestureHandler: ((UIPanGestureRecognizer) -> Void)?

    lazy var tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(_:)))
    lazy var panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.backgroundColor = UIColor(white: 0.0, alpha: 1.0)
        self.alpha = 0.0

        self.addGestureRecognizer(self.tapGesture)
        self.addGestureRecognizer(self.panGesture)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc
    func handleTapGesture(_ sender: UITapGestureRecognizer) {
        self.tapGestureHandler?(sender)
    }

    @objc
    func handlePanGesture(_ sender: UIPanGestureRecognizer) {
        self.panGestureHandler?(sender)
    }
}

#endif
