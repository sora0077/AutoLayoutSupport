//: Playground - noun: a place where people can play

import UIKit
import AutoLayoutSupport
import PlaygroundSupport

extension UIView {
    convenience init(_ color: UIColor, alpha newAlpha: CGFloat = 1) {
        self.init()
        backgroundColor = color
        alpha = newAlpha
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let red = UIView(.red)
        view.addSubview(red)
        red.autolayout.size.equal(to: 100)
        red.autolayout.center.equal(to: view)

        let blue = UIView(.blue)
        view.addSubview(blue)
        blue.autolayout.top.equal(to: red.autolayout.bottom, constant: 10)
        blue.autolayout.centerX.equal(to: red.autolayout.centerX)
        blue.autolayout.size.equal(to: red, multiplier: 2)
    }
}

PlaygroundPage.current.liveView = ViewController()
