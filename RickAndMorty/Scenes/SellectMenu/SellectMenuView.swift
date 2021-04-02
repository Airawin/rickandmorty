
import UIKit
import SnapKit

class SellectMenuView: BaseView {
  
  // MARK: Views
  let imageSellec = UIImage()
    let buttonSelectCharacter = UIButton(type: .custom)
  
  // MARK: Properties
  
  
  // MARK: Initial
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupSelec()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: SetupView
  
    func setupSelec() {
        addSubview(buttonSelectCharacter)
        
        buttonSelectCharacter.setImage(UIImage(named: "fp4913-rick-and-morty-season-4-part-one-v2.jpeg"), for: .normal)
        buttonSelectCharacter.snp.makeConstraints { make in
            let size = CGSize(width: 200, height: 200)
            make.size.equalTo(size)
            make.top.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
    }
}
