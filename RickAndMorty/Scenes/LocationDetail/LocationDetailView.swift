
import UIKit
import SnapKit

class LocationDetailView: BaseView {
  
  // MARK: Views
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cs = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cs.backgroundColor = .white
        return cs
    }()
  
  // MARK: Properties
    
    var locations = [RickAndMortyLocation]() {
      didSet {
        collectionView.reloadData()
      }
    }
  
  // MARK: Initial
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: SetupView
  
    private func setupView(){
        addSubviews(collectionView)
        
        collectionView.snp.makeConstraints{ make in
            make.top.equalTo(300)
            make.leading.equalTo(65)
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
        }
        
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(LocationCell.self, forCellWithReuseIdentifier: "cell")
    }
}

extension LocationDetailView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LocationCell
        let location = locations[indexPath.row]
        cell.setup(location: location)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200)
    }
     
}
