
import UIKit

class Label: UILabel {
  
  init(size: FontSize, weight: FontWeight) {
    super.init(frame: .zero)
    font = UIFont.monospacedDigitSystemFont(ofSize: CGFloat(size.size), weight: weight.weight)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
