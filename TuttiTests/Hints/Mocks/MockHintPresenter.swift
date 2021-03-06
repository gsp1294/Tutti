//
//  MockHintPresenter.swift
//  TuttiTests
//
//  Created by Daniel Saidi on 2018-06-19.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import Tutti

class MockHintPresenter: HintPresenter {
    
    var dismissInvokeCount = 0
    var dismissInvokeHints = [Hint]()
    
    var presentInvokeCount = 0
    var presentInvokeHints = [Hint]()
    var presentInvokeVcs = [UIViewController]()
    var presentInvokeViews = [UIView]()
    
    func dismiss(hint: Hint) {
        dismissInvokeCount += 1
        dismissInvokeHints.append(hint)
    }
    
    func present(hint: Hint, in vc: UIViewController, from view: UIView) {
        presentInvokeCount += 1
        presentInvokeHints.append(hint)
        presentInvokeVcs.append(vc)
        presentInvokeViews.append(view)
    }
}
