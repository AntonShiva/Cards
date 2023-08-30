//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
        override func loadView() {
            let view = UIView()
            view.backgroundColor = .white

            let label = UILabel()
            label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
            label.text = "Hello World!"
            label.textColor = .black

            view.addSubview(label)
            self.view = view
        }
    }

// Present the view controller in the Live View window
    PlaygroundPage.current.liveView = MyViewController()

protocol ShapeLayerProtocol: CAShapeLayer {
    init(size: CGSize, fillColor: CGColor)
}

    
    class CircleShape: CAShapeLayer, ShapeLayerProtocol {
        
        required init(size: CGSize, fillColor: CGColor) {
            
            super.init()
            // рассчитываем данные для круга
            // радиус равен половине меньшей из сторон
            let radius = ([size.width, size.height].min() ?? 0) / 2
            // центр круга равен центрам каждой из сторон
            let centerX = size.width / 2
            let centerY = size.height / 2
    // рисуем круг
    let path = UIBezierPath(arcCenter: CGPoint(x: centerX, y: centerY),
                                    radius: radius,
                                    startAngle: 0,
                                    endAngle: .pi*2,
                                    clockwise: true)
            path.close()
            // инициализируем созданный путь
            self.path = path.cgPath
            // изменяем цвет
            self.fillColor = fillColor
    }
        required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented")
        }
        
    }
    
extension ShapeLayerProtocol {
    init() {
        fatalError("init() не может быть использован для создания экземпляра")
    }
}


