
import UIKit
import SnapKit
import Kingfisher

class LocationCell: UICollectionViewCell {
    
    let urlLabel = Label(size: .body, weight: .bold)
    let typeLabel = Label(size: .body, weight: .bold)
    
    // MARK: Initial
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)")
    }
    func setupView() {
        contentView.addSubviews(urlLabel, urlLabel)
        
        urlLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
        
//        typeLabel.snp.makeConstraints{ make in
//            make.top.equalTo(urlLabel.snp.top)
//            make.leading.equalTo(urlLabel.snp.trailing, offset: .default)
//            make.trailing.equalToSuperview(offset: .default)
//        }
    }
    
    func setup(location: RickAndMortyLocation ) {
        urlLabel.text = location.url
//        typeLabel.text = location.type
    }
}
