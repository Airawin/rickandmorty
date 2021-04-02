
import UIKit

enum FontSize: CGFloat {
  case title = 20
  case body = 12
  case small = 10
  
  var size: CGFloat {
    rawValue
  }
}

enum FontWeight {
  case normal, bold
  
  var weight: UIFont.Weight {
    switch self {
    case .normal: return .regular
    case .bold: return .bold
    }
  }
}
