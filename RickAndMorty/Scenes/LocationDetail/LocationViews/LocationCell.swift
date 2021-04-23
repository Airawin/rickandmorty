
import UIKit
import SnapKit
import Kingfisher

class LocationCell: UICollectionViewCell {
    
    let locationImageView = UIImageView()
    let nameLabel = Label(size: .body, weight: .bold)
    
    // MARK: Initial
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)")
    }
    func setupView() {
        contentView.addSubviews(locationImageView, nameLabel)
        
        locationImageView.layer.cornerRadius = 100
        locationImageView.clipsToBounds = true
        locationImageView.contentMode = .scaleToFill
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        
        locationImageView.snp.makeConstraints{ make in
            make.top.equalToSuperview()
            make.xEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
        
        
    }
    
    func setup(location: RickAndMortyLocation ) {
        nameLabel.text = location.name
    }
    
    func setupResidents(_ indexPath: IndexPath, location: RickAndMortyLocation) {
        let APIResident = location.residents[indexPath.row]
        var firstAPI = String(APIResident.dropLast())
        while firstAPI.last != "/" {
            firstAPI = String(firstAPI.dropLast())
        }
        let subAPI = APIResident.components(separatedBy: "/")
        let number = subAPI[subAPI.endIndex-1]
        let lastChar = String(number) + ".jpeg"
        let imageLocation = firstAPI + "avatar/" + lastChar
        let url = URL(string: imageLocation)
        locationImageView.kf.setImage(with: url)
    }
}
