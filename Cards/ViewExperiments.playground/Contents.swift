//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


    class MyViewController : UIViewController {
        override func loadView() {
            setupViews()
        }
        // настройка представлений сцены
        private func setupViews() {
            // создание корневого view
            let view = UIView()
            view.backgroundColor = #colorLiteral(red: 0.3257405758, green: 1, blue: 1, alpha: 1)
            self.view = view
        }
        
    }
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
