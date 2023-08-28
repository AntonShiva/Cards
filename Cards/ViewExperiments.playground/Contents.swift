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
            let yellowView = getYellowView()
            // фиолетовый вью
            let filletView = getFilletView()
            
            setCentr(view: blyView, toCenterOfView: greenView)
            // выравнить фиолетове вью по центру
            filletView.center = blyView.center
            
            self.view.addSubview( greenView )
            self.view.addSubview(yellowView)
            greenView.addSubview( blyView )
            greenView.addSubview(filletView)
        }
        // создание корневого view
        private func getRootView() -> UIView {
            let view = UIView()
            view.backgroundColor =  #colorLiteral(red: 0.4215908051, green: 0.6531054974, blue: 0.6920796037, alpha: 1)
            return view
        }
        // создание зеленoго квадрата в нутри корневого view
        private func getGreenView() ->  UIView {
            let viewFrame = CGRect(x: 50, y: 50, width: 200, height: 200)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0, green: 0.9597107768, blue: 0.2508707047, alpha: 1)
            view.clipsToBounds = true
            return view
        }
        // создание голубого квадрата
        private func getBlyView() -> UIView {
            let viewFrame = CGRect(x: 10, y: 10, width: 180, height: 180)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0, green: 0.3623378277, blue: 1, alpha: 1)
            return view
            
        }
        // создание фиолетового квадрата
        private func getFilletView() -> UIView {
            let viewFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0.8852633834, green: 0.4954180717, blue: 1, alpha: 1)
            return view
        }
        // создание желтого квадрата
        private func getYellowView() -> UIView {
            let viewFrame = CGRect(x: 50, y: 300, width: 100, height: 100)
            let view = UIView(frame: viewFrame)
            view.backgroundColor = #colorLiteral(red: 0.975792706, green: 1, blue: 0.2305567265, alpha: 1)
            view.layer.borderWidth = 5
            view.layer.borderColor = #colorLiteral(red: 1, green: 0.4109809399, blue: 0.4177432656, alpha: 1)
            view.layer.cornerRadius = 10
            view.layer.shadowOpacity = 0.85
            view.layer.shadowRadius = 20
            view.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            view.layer.shadowOffset = CGSize(width: 10, height: 20)
            view.layer.opacity = 0.9
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
