
import UIKit
import SnapKit

class SellectMenuView: BaseView {
  
  // MARK: Views
    let size = CGSize(width: 200, height: 200)
  let backgroundImage = UIImageView()
  let buttonSelectCharacter = UIButton(type: .custom)
  let buttonSelectLocation = UIButton(type: .custom)
    let buttonSelectEpisode = UIButton(type: .custom)
  
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
        addSubviews(buttonSelectCharacter, buttonSelectLocation, buttonSelectEpisode)
        
        buttonSelectCharacter.setImage(UIImage(named: "fp4913-rick-and-morty-season-4-part-one-v2.jpeg"), for: .normal)
        buttonSelectCharacter.snp.makeConstraints { make in
            make.size.equalTo(size)
            make.top.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
        
        buttonSelectLocation.setImage(UIImage(named: "RICKMORTY_V4_HC_-_COMP_FNL_WEB.jpeg"), for: .normal)
        buttonSelectLocation.snp.makeConstraints{ make in
            make.size.equalTo(size)
            make.top.equalTo(buttonSelectCharacter.snp.bottom, offset: .betweenSection)
            make.centerX.equalToSuperview()
        }
        
        buttonSelectEpisode.setImage(UIImage(named: "RICKMORTY_60-COVERBSOLICITWEB.jpeg"), for: .normal)
        buttonSelectEpisode.snp.makeConstraints{ make in
            make.size.equalTo(size)
            make.top.equalTo(buttonSelectLocation.snp.bottom, offset: .betweenSection)
            make.centerX.equalToSuperview()
        }
    }
}
