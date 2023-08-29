//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        // создание кривых на сцена
        createBezie(on: view)
    }
    private func createBezie(on view: UIView) {
        // графический контекст( слой - холст )
        let shapeLayer = CAShapeLayer()
        // добавление к корневому слою корневого вью
        view.layer.addSublayer(shapeLayer)
        
        // цвет линии
        shapeLayer.strokeColor = #colorLiteral(red: 0.4973155856, green: 0, blue: 0.5186158419, alpha: 1)
        // толщина линии
        shapeLayer.lineWidth = 5
        // цвет заливки
        shapeLayer.fillColor = #colorLiteral(red: 1, green: 0.6048365831, blue: 0.9596111178, alpha: 1)
        // скругление концов линий
        shapeLayer.lineJoin = .round
        
//        // скругление концов линий
//        shapeLayer.lineCap = .round
//        // прерывистая
//        shapeLayer.lineDashPattern = [3,6,7]
//        // начало и конец линии
//        shapeLayer.strokeStart = 0.3
//        shapeLayer.strokeEnd = 0.8
        // создание фигруры
        shapeLayer.path = getPath().cgPath
        
    }
    
 
    private func getPath() -> UIBezierPath {
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 50, y: 50))
//        path.addLine(to: CGPoint(x: 150, y: 50))
//        path.addLine(to: CGPoint(x: 150, y: 150))
//        path.close()
//
//
//        path.move(to: CGPoint(x: 50, y: 70))
//        path.addLine(to: CGPoint(x: 150, y: 170))
//        path.addLine(to: CGPoint(x: 50, y: 170))
//        path.close()
        
        // создание сущности "Прямоугольник"
        let rect = CGRect(x: 10, y: 10, width: 200, height: 100) // создание прямоугольника
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 20)
        return path
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
