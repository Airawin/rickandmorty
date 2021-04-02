
import UIKit
import SnapKit

class CharacterDetailView: BaseView {
  
  // MARK: Views
  
  let characterImageView = UIImageView()
    let nameLabel = Label(size: .title, weight: .bold)
    let idLabel = Label(size: .title, weight: .bold)
    let speciesLabel = Label(size: .title, weight: .bold)
    let genderLabel = Label(size: .title, weight: .bold)
    let nameChar: String = ""
  
  // MARK: Initial
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupView() {
    addSubviews(characterImageView, nameLabel, idLabel, speciesLabel, genderLabel)

    characterImageView.snp.makeConstraints { make in
      let size = CGSize(width: 200, height: 200)
      make.size.equalTo(size)
      make.top.equalTo(layoutGuide.snp.topMargin, offset: .default)
      make.centerX.equalToSuperview()
    }

//    nameLabel.textAlignment = .center
    nameLabel.snp.makeConstraints { make in
      make.top.equalTo(characterImageView.snp.bottom, offset: .betweenSection)
      make.xEdges.equalToSuperview(inset: .default)
    }
    
//    idLabel.textAlignment = .center
    idLabel.snp.makeConstraints { make in
      make.top.equalTo(nameLabel.snp.bottom, offset: .default)
      make.xEdges.equalToSuperview(inset: .default)
    }
    
    speciesLabel.snp.makeConstraints { make in
      make.top.equalTo(idLabel.snp.bottom, offset: .default)
      make.xEdges.equalToSuperview(inset: .default)
    }
    
    genderLabel.snp.makeConstraints { make in
        make.top.equalTo(speciesLabel.snp.bottom, offset: .default)
        make.xEdges.equalToSuperview(inset: .default)
    }
  }
  
}
