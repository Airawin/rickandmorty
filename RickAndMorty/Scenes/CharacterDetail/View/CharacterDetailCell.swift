
import UIKit
import SnapKit
import Kingfisher

class CharacterDetailCell: UICollectionViewCell {
    
    let layout = UIView()
    let statusLabel = Label(size: .body, weight: .bold)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        contentView.addSubviews(statusLabel)
        
        statusLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview(offset: .default)
            make.leading.equalToSuperview(offset: .default)
            make.bottom.equalTo(-Spacing.default.value)
        }
    }
    
    func setup(with character: RickAndMortyCharacter) {
      statusLabel.text = character.status
    }
}
