
import UIKit

protocol SellectMenuDisplayable: class {
    
}

class SellectMenuViewController: BaseViewController<SellectMenuView>, SellectMenuDisplayable {
  
  // MARK: Properties
  
  var presenter: SellectMenuPresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    mainView.buttonSelectCharacter.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    
  }
  
  // MARK: View
    
    @objc func buttonAction(sender: UIButton!) {
        presenter.presenCharacter()
    }
    
}
