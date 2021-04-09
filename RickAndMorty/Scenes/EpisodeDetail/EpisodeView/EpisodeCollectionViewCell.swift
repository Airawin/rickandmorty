
import UIKit
import SnapKit
import Kingfisher

class EpisodeCollectionViewCell: UICollectionViewCell {
    
    let urlLabel = Label(size: .body, weight: .bold)
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)")
    }
    func setupView() {
        contentView.addSubviews(urlLabel)
        
        urlLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
    }
    
    func setup(episode: RickAndMortyEpisode ) {
        urlLabel.text = "\(episode.url)"
    }
}
