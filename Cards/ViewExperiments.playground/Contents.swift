//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


    class MyViewController : UIViewController {
        
        override func loadView() {
            setupViews()
        }
        // настройка представлений сцены
        private func setupViews() {
            self.view = getRootView()
            let greenView = getGreenView()
            let blyView = getBlyView()
            setCentr(view: blyView, toCenterOfView: greenView)
            
            self.view.addSubview( greenView )
            greenView.addSubview( blyView )
        }
        // создание корневого view
        private func getRootView() -> UIView {
            let view = UIView()
            view.backgroundColor =  #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)
            return view
        }
        // создание квадрата в нутри корневого view
        private func getGreenView() ->  UIView {
            let viewFrame = CGRect(x: 50, y: 50, width: 250, height: 220)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0, green: 0.9597107768, blue: 0.2508707047, alpha: 1)
            view.clipsToBounds = true
            return view
        }
        private func getBlyView() -> UIView {
            let viewFrame = CGRect(x: 10, y: 10, width: 180, height: 180)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0, green: 0.3623378277, blue: 1, alpha: 1)
            return view
            
        }
        private func setCentr(view moveView: UIView,toCenterOfView baseView: UIView) {
            // размеры вложенного предстовления
            let moveViewWidth = moveView.frame.width
            let moveViewHeight = moveView.frame.height
            // размеры родительского предстовления
            let baseViewWidth = baseView.frame.width
            let baseViewHeight = baseView.frame.height
            // вычисление и изменение координат
            let newXCoordinate = (baseViewWidth - moveViewWidth) / 2
            let newYCoordinate = (baseViewHeight - moveViewHeight) / 2
            moveView.frame.origin = CGPoint(x: newXCoordinate, y: newYCoordinate)
        }
        
    }
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
